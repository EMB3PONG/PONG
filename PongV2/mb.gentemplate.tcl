proc pngeninsttemplate {} {
  cd C:/XilinxWorkSpace/PongV2/mb
  if { [ catch { xload xmp mb.xmp } result ] } {
    exit 10
  }
  if { [catch {run mhs2hdl} result] } {
    return -1
  }
  return 0
}
if { [catch {pngeninsttemplate} result] } {
  exit -1
}
exit $result
