#! /usr/bin/python3

### REQUIRES python 3 !!!!

## Run:  ./app_IE.py
## Reads from stdin and writes to stdout
## For example:
##     ./app_IE.py < Corpus_AcaoSocial/allDocs.txt > res_allDocs.txt

import pyfreeling
import nltk
import sys, os


##-----------------------------------------------
## Extract lemma and sense of word 'w' and store them
## in 'lem' and 'sens' respectively
##-----------------------------------------------
def extract_lemma_and_sense(w) :
   lem = w.get_lemma()
   sens=""
   if len(w.get_senses())>0 :
       sens = w.get_senses()[0][0]
   return lem, sens


## -----------------------------------------------
## Do whatever is needed with analyzed sentences
## -----------------------------------------------
def ProcessSentences2(ls, sdb) :

    # for each sentence in list
    for s in ls :

       # for each predicate in sentence
       for pred in s.get_predicates() :
          lsubj=""; 
          ssubj=""; 
          ldobj=""; 
          sdobj="";
          # for each argument of the predicate
          for arg in pred :
              # if the argument is A1, store lemma and synset in ldobj, sdobj
             if arg.get_role()=="A1" :
                 (ldobj,sdobj) = extract_lemma_and_sense(s[arg.get_position()])
              # if the argument is A0, store lemma and synset in lsubj, subj
             elif arg.get_role()=="A0" :
                 (lsubj,ssubj) = extract_lemma_and_sense(s[arg.get_position()])
             # Get tree node corresponding to the word marked as argument head
             head = s.get_dep_tree().get_node_by_pos(arg.get_position())
             # check if the node has dependency is "by" in passive structure
             if lsubj=="by" and head.get_label=="LGS" :
                 # get first (and only) child, and use it as actual subject 
                 head = head.get_nth_child(0)
                 (lsubj,ssubj) = extract_lemma_and_sense(head.get_word())


       #if the predicate had both A0 and A1, we found a complete SVO triple. Let's output it.
       if lsubj!="" : 
          if ldobj!="" :
             (lpred,spred) = extract_lemma_and_sense(s[pred.get_position()])
             # if we found a synset for the predicate, obtain lemma synonyms and SUMO link
             if (spred!="") :
                 ipred = sdb.get_sense_info(spred);
                 lpred =  "/".join(ipred.words) + " [" + ipred.sumo + "]"
          # if we found a synset for the subject, obtain lemma synonyms and SUMO link
             if (ssubj!="") :
                 isubj = sdb.get_sense_info(ssubj);
                 lsubj = "/".join(isubj.words) + " [" + isubj.sumo + "]"

          # if we found a synset for the object, obtain lemma synonyms and SUMO link
             if (sdobj!="") :
                 idobj = sdb.get_sense_info(sdobj);
                 ldobj = "/".join(idobj.words) + " [" + idobj.sumo + "]"

             print ("SVO : (pred:   " , lpred, "[" + spred + "]")
             print ("       subject:" , lsubj, "[" + ssubj + "]")
             print ("       dobject:" , ldobj, "[" + sdobj + "]")
             print ("      )")


## -----------------------------------------------
## Do whatever is needed with analyzed sentences
## -----------------------------------------------
def ProcessSentences(ls) :

    # for each sentence in list
    for s in ls :

       # for each predicate in sentence
       for pred in s.get_predicates() :
          lsubj=""; ssubj=""; ldobj=""; sdobj=""
          # for each argument of the predicate  
          for arg in pred :
              # if the argument is A1, store lemma and synset in ldobj, sdobj
             if arg.get_role()=="A1" : 
                 (ldobj,sdobj) = extract_lemma_and_sense(s[arg.get_position()])
              # if the argument is A0, store lemma and synset in lsubj, subj
             elif arg.get_role()=="A0" :
                 (lsubj,ssubj) = extract_lemma_and_sense(s[arg.get_position()])
             # Get tree node corresponding to the word marked as argument head
             head = s.get_dep_tree().get_node_by_pos(arg.get_position())
             # check if the node has dependency is "by" in passive structure
             if lsubj=="by" and head.get_label=="LGS" :
                 # get first (and only) child, and use it as actual subject 
                 head = head.get_nth_child(0)
                 (lsubj,ssubj) = extract_lemma_and_sense(head.get_word())         

       #if the predicate had both A0 and A1, we found a complete SVO triple. Let's output it.
       if lsubj!="" and ldobj!="" :
          (lpred,spred) = extract_lemma_and_sense(s[pred.get_position()])
          print ("SVO : (pred:   " , lpred, "[" + spred + "]")
          print ("       subject:" , lsubj, "[" + ssubj + "]")
          print ("       dobject:" , ldobj, "[" + sdobj + "]")
          print ("      )")



## ----------------------------------------------
## -------------    MAIN PROGRAM  ---------------
## ----------------------------------------------

## Check whether we know where to find FreeLing data files
if "FREELINGDIR" not in os.environ :
   if sys.platform == "win32" or sys.platform == "win64" : os.environ["FREELINGDIR"] = "C:\\Program Files"
   else : os.environ["FREELINGDIR"] = "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing"
   print("FREELINGDIR environment variable not defined, trying ", os.environ["FREELINGDIR"], file=sys.stderr)

if not os.path.exists(os.environ["FREELINGDIR"]+"/share/freeling") :
   print("Folder",os.environ["FREELINGDIR"]+"/share/freeling",
         "not found.\nPlease set FREELINGDIR environment variable to FreeLing installation directory",
         file=sys.stderr)
   sys.exit(1)


# Location of FreeLing configuration files.
DATA = os.environ["FREELINGDIR"]+"/share/freeling/";

# Init locales
pyfreeling.util_init_locale("default");

# create options set for maco analyzer. Default values are Ok, except for data files.
LANG="pt";
op= pyfreeling.maco_options(LANG);
op.set_data_files( "", 
                   DATA + "common/punct.dat",
                   DATA + LANG + "/dicc.src",
                   DATA + LANG + "/afixos.dat",
                   "",
                   DATA + LANG + "/locucions.dat", 
                   DATA + LANG + "/nerc/ner/ner-ab-rich.dat",
                   DATA + LANG + "/quantities.dat",
                   DATA + LANG + "/probabilitats.dat");

# create analyzers
tk=pyfreeling.tokenizer(DATA+LANG+"/tokenizer.dat");
sp=pyfreeling.splitter(DATA+LANG+"/splitter.dat");
sid=sp.open_session();
mf=pyfreeling.maco(op);

# activate mmorpho odules to be used in next call
mf.set_active_options(False, True, True, True,  # select which among created 
                      True, True, False, True,  # submodules are to be used. 
                      True, True, True, True ); # default: all created submodules are used

# create tagger, sense anotator, and parsers
tg=pyfreeling.hmm_tagger(DATA+LANG+"/tagger.dat",True,1,2);  ## ver se valor 1 e melhor, se nao devo mudar 1 para 2 novamente
sen=pyfreeling.senses(DATA+LANG+"/senses.dat");
nerc = pyfreeling.nec(DATA+LANG+"/nerc/nec/nec-ab-rich.dat");
#parser= pyfreeling.chart_parser(DATA+LANG+"/chunker/grammar-chunk.dat");
dep=pyfreeling.dep_treeler(DATA+LANG+"/dep_treeler/dependences.dat");
wsd = pyfreeling.ukb(DATA+LANG+"/ukb.dat");

# process input text
#lin=sys.stdin.readline();
lin = sys.stdin.read();

#docs_conc = open('/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/APIs/python3/Corpus_AcaoSocial/acao_social.txt', 'r');
#lin = docs_conc.readline();

#while (lin) :

print("");    
print(lin);


print("#---------------TOKENIZER---------------#")

l_tok = tk.tokenize(lin);
## output number of tokens
print("[", end = " ");
for w in l_tok :
   print("["+w.get_form()+"]"+";", end=" ");
print("]");
print("");
print("---> Number of tokens: " + str(len(l_tok)));
print("");
print("");
print("");


print("#-----------SENTENCE SPLITTER-----------#")

ls_splt = sp.split(sid,l_tok,False);
## output number of sentences
for s in ls_splt :
    print("[", end = " ");
    ws = s.get_words();
    for w in ws :
       print(w.get_form(), end=" ");
    print("]");
    print("");
print("---> Number of sentences: " + str(len(ls_splt)));
print("");
print("");
print("");


###print("#---------MORPHOLOGICAL ANALYZER--------#")

ls_morp = mf.analyze(ls_splt);


###print("#----------MULTIWORD RECOGNITION-----------#")
###ls_mw ;


print("#---------------POS TAGGER--------------#")

ls_tag = tg.analyze(ls_morp);
print("WordForm;" + "\t" + "Lemma;" + "\t" + "Tag")
print("");
for s in ls_tag :
    ws = s.get_words();
    for w in ws :
       print(w.get_form() + ";\t" + w.get_lemma() + ";\t" + w.get_tag());
print("");
print("");
print("");


#print("#------------SENSE LABELLING------------#")

ls_sens = sen.analyze(ls_tag);
#print("WordForm;" + "\t" + "Lemma;" + "\t" + "Tag;" + "\t" + "Sense");
#print("");
#for s in ls_sens :
#    ws = s.get_words();
#    for w in ws :
#       print(w.get_form() + ";\t" + w.get_lemma() + ";\t" + w.get_tag() + ";\t" + w.get_senses_string());
#       print("");
#print("");
#print("");
#print("");


print("#--------NAMED ENTITY RECOGNITION-------#")

ls_nerc = nerc.analyze(ls_sens);
print("WordForm;" + "\t" + "Lemma;" + "\t" + "Entity;");
print("");
for s in ls_nerc :
    ws = s.get_words();
    for w in ws :
       tagclss = w.get_tag();
       if "NP00" in tagclss :
           print(w.get_form() + ";\t" + w.get_lemma() + ";\t" + tagclss);
           print("");
print("");
print("");
print("");


print("#-------------------PERSON----------------#")
for s in ls_nerc :
    ws = s.get_words();
    for w in ws :
       tagclass = w.get_tag();
       if "NP00SP" in tagclass :
           print(w.get_form() + ";\t" + w.get_lemma());
           print("");
print("");
print("");
print("");

print("#-----------------LOCATION------------------#");
for s in ls_nerc :
    ws = s.get_words();
    for w in ws :
       tagclass = w.get_tag();
       if "NP00G" in tagclass :
           print(w.get_form() + ";\t" + w.get_lemma());
           print("");
print("");
print("");
print("");

print("#-----------------ORGANIZATION-------------#")
for s in ls_nerc :
    ws = s.get_words();
    for w in ws :
       tagclass = w.get_tag();
       if "NP00O" in tagclass:
           print(w.get_form() + ";\t" + w.get_lemma());
           print("");
print("");
print("");
print("");

print("#-------------------OTHERS-----------------#");
for s in ls_nerc :
    ws = s.get_words();
    for w in ws :
       tagclass = w.get_tag();
       if "NP00V" in tagclass :
           print(w.get_form() + ";\t" + w.get_lemma());
           print("");
print("");
print("");
print("");


print("#--------------STATISTICAL DEPENDENCY PARSER-------------#")

ls_nerc = wsd.analyze(ls_nerc);

#ls_pars = parser.analyze(ls_tag);
ls_dep_pars = dep.analyze(ls_nerc);
##or: ls_dep_pars = dep.analyse(ls_nerc)
print("");

#out = pyfreeling.output_conll("out2.cfg");
#res = out.PrintResults(ls_dep_pars);
#print(res);

out = pyfreeling.output_conll();
res = out.PrintResults(ls_dep_pars);
print(res);

sdb = pyfreeling.semanticDB(DATA+LANG+"/semdb.dat");
ProcessSentences(ls_dep_pars);

# clean up
sp.close_session(sid);

