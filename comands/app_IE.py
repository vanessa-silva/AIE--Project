#! /usr/bin/python3

### REQUIRES python 3 !!!!

## Run:  ./app_IE.py
## Reads from stdin and writes to stdout
## For example:
##     ./app_IE.py < Corpus_AcaoSocial/allDocs.txt > res_allDocs.txt

import pyfreeling
import nltk
import sys, os


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

ls_nerc = nerc.analyze(ls_tag);
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

# clean up
sp.close_session(sid);

