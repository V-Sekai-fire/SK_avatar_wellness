rm -rf ouput
ludwig evaluate --dataset test.tsv --model_path results/experiment_run/model --skip_save_unprocessed_output  --output_directory output --skip_save_unprocessed_output > evaluation.txt
#  ludwig serve --model_path ./results/experiment_run_1/model
# msys2
# pacman -Su mingw-w64-x86_64-jq # /mingw64/bin/jq.exe
# curl http://0.0.0.0:8000/predict -X POST -d "@invalid_chest_data.txt" | /mingw64/bin/jq.exe 'to_entries[] | select(.key|endswith("_predictions")) | select(.value)'
# curl http://0.0.0.0:8000/predict -X POST -d "@invalid_chest_data.txt" | /mingw64/bin/jq.exe 'to_entries[] | select(.key|endswith("_probabilities_True")) | select(.value)'