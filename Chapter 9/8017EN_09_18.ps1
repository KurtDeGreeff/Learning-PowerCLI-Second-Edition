$VM = Get-VM -Name VM1
Get-VIEvent -Types Info -Entity $VM -MaxSamples ([int]::MaxValue) |
Where-Object {
  @('VmBeingDeployedEvent','VmCreatedEvent','VmRegisteredEvent','VmClonedEvent') -contains $_.Gettype().Name
}