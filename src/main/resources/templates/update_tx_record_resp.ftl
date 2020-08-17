[{
  "submission_id": "${headers.h_submission_id}",
  "sid": "${headers.h_sid}",
  "tid": "${headers.h_tid}",

<#if headers.h_malicious_archive_ind??>
  "malicious_archive_ind": "${headers.h_malicious_archive_ind}",
<#else >
  "malicious_archive_ind": null,
</#if>

  "transaction_file_id": "${headers.h_transaction_file_id}",
  "level": "${headers.h_level}",
  "location": "${headers.h_location}",
  "name": "${headers.h_name}",
  "magic_num": "${headers.h_magic_num}",

<#if headers.h_file_extension??>
  "verified_file_extension": ${headers.h_file_extension},
<#else >
  "verified_file_extension": null,
</#if>


<#if headers.h_file_metadata_id??>
  "file_metadata_id": "${headers.h_file_metadata_id}",
<#else >
  "file_metadata_id": null,
</#if>

<#if headers.h_original_file_name??>
  "original_file_name": "${headers.h_original_file_name}",
<#else >
  "original_file_name": null,
</#if>

<#if headers.h_pid??>
  "pid": "${headers.h_pid}",
<#else>
  "pid": null,
</#if>

<#if headers.h_hash_exist_ind??>
  "hash_exist_ind": "${headers.h_hash_exist_ind}",
<#else >
  "hash_exist_ind": null,
</#if>

<#if headers.h_size??>
  "file_size": "${headers.h_size},
<#else >
  "file_size": null,
</#if>


<#if headers.h_nsrl_ind??>
  "nsrl_ind": "${headers.h_nsrl_ind}"
<#else>
  "nsrl_ind": null
</#if>

}]