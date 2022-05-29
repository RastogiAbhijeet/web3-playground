import { ethers, upgrades } from "hardhat";

async function main() {
  const Counter = await ethers.getContractFactory("Counter");
  const counter = await upgrades.deployProxy(Counter, [0]);
  await counter.deployed()

  console.log("Counter is deployed.")
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
