// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
contract SoftwareInstallation {
    uint public cpuUsage;
    uint public ram;
    uint public diskStorage;
    uint public latest;

    function initializeSystem(uint _cpu,uint _ram,uint _diskstorage)public{
      cpuUsage =_cpu;
      ram=_ram;
      diskStorage =_diskstorage;
}
function testRequire(uint _diskStorage)   public {
    require(_diskStorage > 25, "diskStorage must be greater than 25 GB");
    diskStorage =  _diskStorage;}
function startsSoftware(uint _cpuUsage)  public {
        if(_cpuUsage > 90) {
             revert("not enough cpu");}
            cpuUsage =_cpuUsage;}
function setLatestversion(uint version)public {
        latest = version;}
    function checkversion(uint appVersion)public view {
        assert(appVersion == latest);}}
