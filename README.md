# ERROR HANDLING

In this we are going to deal with errors which occur in code by using error handling and basically three statements i.e, require(),revert() and assert().

## Description

In this , we have made state variables rather using struct and created 5 function for initializingsystem, for testreuire, for startSoftware which is for revert usage and functin setLatestveersion for giving condition and function checkversion for assert uses in this we will check if the requirements is filled properly or not .
## Getting Started

### Installing

* How/where to download your program
* Any modifications needed to be made to files/folders

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., Errorhandling.sol). Copy and paste the following code into the file:
``` javascript
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

```

## Authors

Tanu pal
@tanu


## License

This project is licensed under the [Metacrafters] License - see the LICENSE.md file for details
