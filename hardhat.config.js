/** @type import('hardhat/config').HardhatUserConfig */
require('@openzeppelin/hardhat-upgrades');
require("hardhat-tracer");
module.exports = {
  solidity: "0.8.23",
  networks: {
	localhost: {
		url : `http://localhost:8545/`,
		gasMultiplier: 4,
	}
  }

};
