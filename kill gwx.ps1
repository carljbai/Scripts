#$pidn=get-process gwx |select -expand id
#kill $pidn

kill (get-process gwx |select -expand id)