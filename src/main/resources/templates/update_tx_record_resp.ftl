[{
  "transaction_file_id": "${headers.h_transaction_file_id}",
  "tid": "${headers.h_tid}",
  "submission_id": "${headers.h_submission_id}",
  "sid": "${headers.h_sid}",
  "location": "${headers.h_location}",
  "name": "${headers.h_name}",
  "size": "${(headers.h_size) ! '1MB'}",
  "magic_num": "${headers.h_magic_num}",
  "verified_file_extension": "${(headers.h_file_extension) ! 'unknown'}",
  "transaction_num": "${headers.h_transaction_num}"
}]