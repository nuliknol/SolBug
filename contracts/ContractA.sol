// SPDX-License-Identifier: CC0-1.0
pragma solidity 0.8.23;
import { Ownable } from "@openzeppelin/contracts/access/Ownable.sol";
import { ContractConstants } from "./ContractConstants.sol";
import { ContractB } from "./ContractB.sol";

contract ContractA is Ownable {
//contract ContractA  {

    ContractConstants.MyType public curType;
	ContractB public executor;
	
	constructor() Ownable(msg.sender) {
		
	}
   
    function doSomething() public payable returns (ContractConstants.MyType) {

        (bool success,)=address(executor).delegatecall(abi.encodeWithSelector(ContractB.executeSomething.selector));
        require(success, "Call to ContractB failed.");
		return curType;
	}
    function setContractB(address addr) external{
        executor = ContractB(addr);
    }
}
