import pyfreeling
import nltk
from nltk.corpus import PlaintextCorpusReader
import sys, os



########################################
#------------- MAIN PROGRAM -----------#
########################################


## Check whether we know where to find FreeLing data files 
if "FREELINGDIR" not in os.environ:
	if sys.platform == "win32" or sys.platform == "win64":
		os.environ["FREELINGDIR"] = "C:\\Program Files"
	else: 
		os.environ["FREELINGDIR"] = "/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing"
		print("FREELINGDIR environment variable not defined, trying ", os.environ["FREELINGDIR"], file=sys.stderr)

if not os.path.exists(os.environ["FREELINGDIR"]+"/share/freeling"):
	print("Folder", os.environ["FREELINGDIR"]+"/share/freeling", "not found.\nPlease set FREELINGDIR environment variable to FreeLing installation directory", file=sys.stderr)
	sys.exit(1)

## Location of FreeLing configuration files
DATA = os.environ["FREELINGDIR"]+"/share/freeling/";

## Init locales
pyfreeling.util_init_locale("default");

## create language detector
#la = pyfreeling.lang_ident(DATA+"common/lang_ident/ident-few.dat"); 

LANG = "pt";

## create analyzers

# Tokinizer
tk = pyfreeling.tokenizer(DATA + LANG + "/tokenizer.dat");

# Sentence Splitt
sp = pyfreeling.splitter(DATA + LANG + "/splitter.dat");
sp_id = pyfreeling.sp.open_session();

# Morphological Analyzer
# create options ste for maco analyzer
op = pyfreeling.maco_options(LANG);
op.set_data_files("",
					DATA + "common/punct.dat",
					DATA + LANG + "/dicc.src",
					DATA + LANG + "/afixos.dat",
					"",
					DATA + LANG + "/locucions.dat",
					DATA + LANG + "/np.dat",
					"",									## DATA + "es" + "np.dat",  ???posso???,   não quantidades para portugues 
					DATA + LANG + "/probabilitats.dat");
mf = pyfreeling.maco(op);
## activate mmorpho odules to be used in next call
mf.set_active_options(False, True, True, True,
						True, True, False, True,
						True, True, False, True);

## create tagger, sense anotator, and parsers
tg = pyfreeling.hmm_tagger(DATA + LANG + "/tagger.dat", True, 1);  ## ver se valor 1 é melhor, se não devo mudar 1 para 2 novamente
sen = pyfreeling.senses(DATA + LANG + "/senses.dat");
parser = pyfreeling.chart_parser(DATA + LANG + "/chunker/grammar-chunk.dat");
dep = pyfreeling.dep_treeler(DATA + LANG + "/dep_treeler/dependences.dat");

## process input corpus
corpus_root = '/mnt/c/Users/vanes/Documents/FreeLingUbu/FreeLing/share/freeling/APIs/python3/Corpus_AcaoSocial';
docs_list = PlaintextCorpusReader(corpus_root, '.*');
#docs_list.fileids();
docs_conc = docs_list.raw();

lin = docs_conc.readline();

while(lin):
	
	l = tk.tokenize(lin);
	ls = sp.split(sp_id, l, False);

	ls = mf.analyze(ls);
	ls = tg.analyze(ls);
	ls = sen.analyze(ls);
	ls = parser.analyze(ls);
	ls = dep.analyze(ls);

	## output results
	for s in ls:
		ws = s.get_words();
		for w in ws:
			print(w.get_form() + " " + w.get_lemma() + " " + w.get_tag() + " " + w.get_senses_string());
		print("");	

	lin = docs_conc.readline();

## clean up
sp.close_session(sp_id);