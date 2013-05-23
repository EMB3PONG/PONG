proc pnsynth {} {
  cd /home/klaus/pong/PONG/PongV5/mb
  if { [ catch { xload xmp mb.xmp } result ] } {
    exit 10
  }
  if { [catch {run netlist} result] } {
    return -1
  }
  return $result
}
if { [catch {pnsynth} result] } {
  exit -1
}
exit $result
