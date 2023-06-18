import { ethers } from "./ethers.js";

const main = async () => {
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const block = await provider.getBlockNumber();
  console.log("main ~ block:", block);

  const signer = provider.getSigner();
  const address = await signer.getAddress();
  console.log("main ~ address:", address);

  const simpleCoin = "0xb5c8CB0846317d82af2DbF90713716B01A2f680a";
  const abi = [
    "function sendCoin(address receiver, uint256 amount) external returns (bool sufficient)",
    "function getBalanceInEth(address addr) external view returns (uint256)",
    "function getBalance(address addr) external view returns (uint256)",
  ];
  const contract = new ethers.Contract(simpleCoin, abi, signer);
  const balance = await contract.getBalance(address);
  console.log("main ~ balance:", balance.toString());

  const receiver = "0xD4E6d94c8F20eAc6695163Bed93D8EFfdB637cb9";
  const transaction = await contract.sendCoin(receiver, 1);
  console.log("main ~ transaction:", transaction);
  console.log("main ~ transaction:", await transaction.wait());
};

const metadataGet = async () => {
  const response = await fetch("https://bafkreiftw5gka5jz5bor3qmwym2df6bcdt6obh4j4piowousxfl3tfb4gi.ipfs.nftstorage.link/");
  const jsonData = await response.json();
  console.log(jsonData);

  return jsonData;
};

const fileMore = async (event) => {
  const buttunSpiner = event.target..getElementById("button__spiner");
  // TODO laucnch spinner
  // TODO check deal
  // TODO get response
  // TODO change archive ending date
  // TODO hide spinner
} 

window.addEventListener("load", async (event) => {
  const nftTitle = document.getElementById("nft__title");
  const nftImage = document.getElementById("nft__img");
  const button = document.getElementById("button");
  
  
  const nftMetadatas = await metadataGet();

  console.log("window.addEventListener ~ nftMetadatas.image:", nftMetadatas);
  nftTitle.textContent = nftMetadatas.name;
  nftImage.src = nftMetadatas.image;
  
  button.addEventListener("click", fileMore)
});

// main().catch(console.error);
