module.exports = {
  networks: {
      development: {
          host: "127.0.0.1",     // Localhost (default: none)
          port: 7545,            // Standard Ganache port
          network_id: "*",       // Any network (default: none)
      },
  },
  compilers: {
      solc: {
          version: "^0.8.0",    // Version of Solidity compiler to use
          optimizer: {
              enabled: true,
              runs: 200
          }
      },
  },
};
