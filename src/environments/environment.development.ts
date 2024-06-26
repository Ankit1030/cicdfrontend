// <<<<<<< HEAD
// const port = 3000;
const port = 5000;
// const serverip = '3.110.142.239'
// const port = 3000;
// const port = 8081;
// const serverip1 = "13.233.19.123"
const serverip = "13.232.248.7"; //myself server 26-06
// export const env  = {
//     port : port,
//     backendUrl:`/api`,
//     socketUrl : `/api`,
// }
// >>>>>>> e2c1632cf908d4bbcce58a19262c1e6656c1e0b1
export const env  = {
    port : port,
    backendUrl:`http://${serverip}:${port}`,
    socketUrl : `ws://${serverip}:${port}`,
}

// http://16.171.176.28/