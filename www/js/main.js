const metadataGet = async () => {
    const response = await fetch("https://bafkreiftw5gka5jz5bor3qmwym2df6bcdt6obh4j4piowousxfl3tfb4gi.ipfs.nftstorage.link/");
    const jsonData = await response.json();
    console.log(jsonData);
    
    return jsonData;
}

metadataGet();

window.addEventListener('load', async (event) => {
    const nftMetadatas = await metadataGet();
    
    console.log("window.addEventListener ~ nftMetadatas.image:", nftMetadatas)
    document.getElementById("nft__img").src = nftMetadatas.image;
});