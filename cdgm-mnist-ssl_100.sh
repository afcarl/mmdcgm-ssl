THEANO_FLAGS=device=$1 python cdgm_x2y_xy2z_zy2x.py -name 'ssl-mnist-100' -dataset mnist_real -flag evaluation -ssl_data_seed -1 -preprocess none -batch_norm_classifier true -top_mlp false -mlp_size 256 -nlayers_cla 5 -nk_cla 32,64,64,128,128  -str_cla 1,1,1,1,1 -ps_cla 2,1,2,1,1 -dk_cla 5,3,3,3,3 -pad_cla valid,same,valid,same,same -nonlin_cla rectify,rectify,rectify,rectify,rectify -dr_cla 0.5,0,0.5,0,0 -nz 100 -batch_norm_dgm false -nlayers_enc 5 -nk_enc 32,32,64,64,64 -dk_enc 5,3,3,3,3 -pad_enc valid,same,valid,same,same -str_enc 1,1,1,1,1 -ps_enc 2,1,2,1,1 -nonlin_enc rectify,rectify,rectify,rectify,rectify -dr_enc 0,0,0,0,0 -nlayers_dec 5 -nk_dec 64,64,32,32,1 -dk_dec 3,3,3,3,5 -pad_dec same,same,full,same,full -str_dec 1,1,1,1,1 -up_method none,none,unpool,none,unpool -ps_dec 1,1,2,1,2 -nonlin_dec rectify,rectify,rectify,rectify,sigmoid -dr_dec 0,0,0,0,0 -lr 3e-4  -nepochs 3000 -anneal_lr_epoch 1500 -anneal_lr_factor .995 -every_anneal 1 -delta 1.0 -num_labelled_per_batch 100 -num_labelled 100 -batch_size 600 -alpha_decay 1e-4 -alpha_hinge 1. -alpha_hat .3 -alpha_reg 1e-3 -alpha .1