1. Create react app (default page)
    npx create-react-app hello-app
2. Then go in side app
    cd hello-app
3. Then install dependency 
    npm install
4. Then build react application for production
    npm run build    
5. The build docker image by copying the react app
    docker build -t dnyanyog.org/react-app:latest -f dockerfile .
6. Then run the images and see the react app running
    docker run -it --rm -p 8081:80 dnyanyog.org/react-app:latest
