python prune.py 
python unique_users.py
python identify_genders.py
python append_demographic.py data/user2gender.json data/pruned_data.csv gender_inferred
python append_demographic.py data/user2type.json data/data_with_demographic.csv UserType
python append_demographic.py data/user2ethnicity.json data/data_with_demographic.csv Ethnicity
python prepare_training.py data/data_with_demographic.csv data/training_data.txt
python train_lda.py
python get_analysis_set.py
python text2corpus.py
python identify_topics.py models/lda-model-100-0.7 100
python append_topics_to_df.py data/analysis_data.csv data/100_sentence_topics.csv 100 
python infer_account_types.py data_with_100.csv data_with_100.csv data/analysis_text.txt
python create_demographics_json.py data_with_100.csv
python topics2json.py models/lda-model-100-0.7 100