# Crypto Miner Docker Image For Monero Coin

## Documentation

    https://ryigitkader.medium.com/create-a-crypto-miner-docker-image-77eb487c833f

## RUN FROM DOCKER IMAGE
    
    Simply Run

    docker run -it -e WALLET="{Your Wallet Address}" ryigitkader/cryptominer

    
    Customize
    
    docker run -it  -e WALLET="{Your Wallet Address}" -e POOL="{Pool For Monero}" -e VERSION="{Monero Git Version}"

# RUN FROM DOCKER FILE

    https://hub.docker.com/r/ryigitkader/cryptominer
    
    docker run -it -e WALLET="{YOUR WALLET ADDRESS}" ryigitkader/cryptominer
    
    
    Chane your wallet addres and if you want pool to. After,
    
    build . -t {image name}
    
    Also you can customize this Dockerfile.





