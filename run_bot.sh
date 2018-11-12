home_dir=~/personal/github/wxbot/
BERT_BASE_DIR=$home_dir/chinese_L-12_H-768_A-12
GLUE_DIR=$home_dir/glue_data

#python3 bert/run_classifier.py \
#  --task_name=YNT \
#  --do_train=true \
#  --do_eval=true \
#  --data_dir=$GLUE_DIR/YNT \
#  --vocab_file=$BERT_BASE_DIR/vocab.txt \
#  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
#  --init_checkpoint=$BERT_BASE_DIR/bert_model.ckpt \
#  --max_seq_length=128 \
#  --train_batch_size=32 \
#  --learning_rate=2e-5 \
#  --num_train_epochs=3.0 \
#  --output_dir=$home_dir/tmp/ynt_output/



TRAINED_CLASSIFIER=$home_dir/tmp/ynt_output/model.ckpt-119

#python3 bert/run_classifier.py \
#  --task_name=YNT \
#  --do_predict=true \
#  --data_dir=$GLUE_DIR/YNT \
#  --vocab_file=$BERT_BASE_DIR/vocab.txt \
#  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
#  --init_checkpoint=$TRAINED_CLASSIFIER \
#  --max_seq_length=128 \
#  --output_dir=$home_dir/tmp/ynt_output/


python3 run_bot.py \
  --data_dir=$GLUE_DIR/YNT \
  --vocab_file=$BERT_BASE_DIR/vocab.txt \
  --bert_config_file=$BERT_BASE_DIR/bert_config.json \
  --init_checkpoint=$TRAINED_CLASSIFIER \
  --max_seq_length=128 \
  --output_dir=$home_dir/tmp/ynt_output/
