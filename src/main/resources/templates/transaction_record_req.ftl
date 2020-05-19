<#setting number_format="computer">

{
   "transaction_file":
   [
     {
         "submission_id":"${headers.h_submission_id}",
         "sid": "${headers.h_sid}",
         "tid": "${headers.h_tid}",
         "level":"${headers.h_level}",
         "location":"${headers.h_filepath}",
         "name":"${headers.h_filename}"
     }
   ]
}
