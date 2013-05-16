proc exportToSDK {} {
  cd C:/XilinxWorkSpace/PongV5/mb
  if { [ catch { xload xmp mb.xmp } result ] } {
    exit 10
  }
  if { [run exporttosdk] != 0 } {
    return -1
  }
  return 0
}

if { [catch {exportToSDK} result] } {
  exit -1
}

set sExportDir [ xget sdk_export_dir ]
set sExportDir [ file join "C:/XilinxWorkSpace/PongV5/mb" "$sExportDir" "hw" ] 
if { [ file exists C:/XilinxWorkSpace/PongV5/edkBmmFile_bd.bmm ] } {
   puts "Copying placed bmm file C:/XilinxWorkSpace/PongV5/edkBmmFile_bd.bmm to $sExportDir" 
   file copy -force "C:/XilinxWorkSpace/PongV5/edkBmmFile_bd.bmm" $sExportDir
}
if { [ file exists C:/XilinxWorkSpace/PongV5/TL.bit ] } {
   puts "Copying bit file C:/XilinxWorkSpace/PongV5/TL.bit to $sExportDir" 
   file copy -force "C:/XilinxWorkSpace/PongV5/TL.bit" $sExportDir
}
exit $result
