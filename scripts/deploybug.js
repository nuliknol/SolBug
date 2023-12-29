const hre = require("hardhat");

async function main() {
    const ContractA = await hre.ethers.getContractFactory("ContractA");
    let cA = await ContractA.deploy();

    const ContractB = await hre.ethers.getContractFactory("ContractB");
    let cB = await ContractB.deploy();

	await cA.setContractB(cB.target);

	let tx = await cA.doSomething();
	let r = await tx.wait();
 
	let curType = await cA.curType();
	console.log("A address: "+cA.target);
	console.log("B address: "+cB.target);
	console.log("At the end , curType = "+curType);
}
main()
	.then(() => process.exit(0))
	.catch((error) => {
		console.error(error);
		process.exit(1);
	});

