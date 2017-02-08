
 add_fsm_encoding \
       {coarse_sync.coarse_sync_state} \
       { }  \
       {{000 00} {001 01} {010 10} {011 11} }

 add_fsm_encoding \
       {ofdm_syn.sync_state} \
       { }  \
       {{000 000} {001 001} {011 010} {100 011} {101 100} }
