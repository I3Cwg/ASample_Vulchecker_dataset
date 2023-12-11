cd cmake_project_CWE190

#Convert each Project into an ePDG
hector configure --llap-lib-dir ~/llvm-project/llvm-build/lib --labels labels.json cmake good 190
cd hector_build/
ninja -f hector.ninja

#Extract sub-ePDGS
hector preprocess \
     --training-indexes ~/indexes-190.json \
     --source-dir $PWD \
     --cwe 190 \
     --output hector-190-preproc.json \
     hector-190.json

#Get Normalization Parameters
hector feature_stats --indexes ~/indexes-190.json --depth-limit 40 ~/cmake_project_CWE190/hector_build/hector-190-preproc.json

#Train a Model
hector train 190 CWE190/ ~/cmake_project_CWE190/hector_build/hector-190-preproc.json ~/cmake_project_CWE190/hector_build/hector-190-preproc.json --indexes ~/indexes-190.json --embedding-dimensions 32 --learning-rate 0.0001 --keep-best --feature-stats ~/cmake_project_CWE190/hector_build/feature_stats.npz --patience 5 --epochs 200 --embedding-steps 50 --embedding-reduction mean --recursive-depth 9 --classifier-dimensions 32 --classifier-depth 7 --device cpu

#Evaluate a Model
hector stats --device cpu --predictions-csv ~/cmake_project_CWE190/demo-190-preds.csv --exec-only ~/cmake_project_CWE190/hector_build/CWE190 ~/cmake_project_CWE190/hector_build/hector-190-preproc.json

cat ~/cmake_project_CWE190/demo-190-preds.csv

#Use a Model
hector lint  ~/cmake_project_CWE190 ~/cmake_project_CWE190/src/good.cpp ~/cmake_project_CWE190/hector_build/CWE190 --device cpu --llap-lib-dir ~/llvm-project/llvm-build/lib/
