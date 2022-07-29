const { ethers, upgrades } = require("hardhat");

async function main() {
    const proxyAddress = "0xe7f1725e7734ce288f8367e1bb143e90bb3f0512";
    const Demo = await ethers.getContractFactory("Demo");

    console.log("Preparing upgrade...");
    await upgrades.upgradeProxy(proxyAddress, Demo);
}

main()
    .then(() => process.exit(0))
    .catch(error => {
        console.error(error);
        process.exit(1);
    });

