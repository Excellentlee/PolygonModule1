const fs = require('fs');
const path = require('path');
console.log(__dirname);

for (let i = 0; i <= 4; i++) {

  const json = {
    name: `DeepNFT Token Data #${i}`, 
    description: `a professional female developer image #${i}`,
    image: `https://gateway.pinata.cloud/ipfs/QmfAFEtUeGhvFy9vqp2CoyU4ioLe81hyEFbVUViVoCZRHn/${i}.jpeg`,
    attributes: [ // Added attributes
        {trait_type: 'Speed', value: 'Fast'},
        {trait_type: 'Background', value: 'SkyBlue'}
    ]
};

  // Writes the JSON object to a file
  fs.writeFileSync(
    path.join(__dirname, 'imagesNFTData', String(i)),
    JSON.stringify(json)
  );
}
