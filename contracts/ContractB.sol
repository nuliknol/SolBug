// SPDX-License-Identifier: CC0-1.0
pragma solidity 0.8.23;
import { ContractConstants } from "./ContractConstants.sol";
import { ContractA } from "./ContractA.sol";

contract ContractB {

    ContractConstants.MyType public curType;
	ContractB public executor;

    function executeSomething() public payable {
		curType = ContractConstants.MyType.Two;
	}
}
