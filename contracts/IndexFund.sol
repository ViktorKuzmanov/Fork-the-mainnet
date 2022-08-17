pragma solidity ^0.8.0;

import "@chainlink/contracts/src/v0.8/interfaces/AggregatorV3Interface.sol";

contract IndexFund {

    constructor() {
        getPricesOfAllCoins();
    }

    AggregatorV3Interface public uniPriceAggregator = AggregatorV3Interface(0xD6aA3D25116d8dA79Ea0246c4826EB951872e02e);
    AggregatorV3Interface public compPriceAggregator = AggregatorV3Interface(0x1B39Ee86Ec5979ba5C322b826B3ECb8C79991699);
    AggregatorV3Interface public snxPriceAggregator = AggregatorV3Interface(0x79291A9d692Df95334B1a0B3B4AE6bC606782f8c);
    AggregatorV3Interface public mkrPriceAggregator = AggregatorV3Interface(0x24551a8Fb2A7211A25a17B1481f043A8a8adC7f2);
    AggregatorV3Interface public kncPriceAggregator = AggregatorV3Interface(0x656c0544eF4C98A6a98491833A89204Abb045d6b);

    int public uniPrice;
    int public compPrice;
    int public snxPrice;
    int public mkrPrice;
    int public kncPrice;

    function getPricesOfAllCoins() public {

        (,int uniPrice1,,,) = uniPriceAggregator.latestRoundData();
        (,int compPrice1,,,) = compPriceAggregator.latestRoundData();
        (,int snxPrice1,,,) = snxPriceAggregator.latestRoundData();
        (,int mkrPrice1,,,) = mkrPriceAggregator.latestRoundData();
        (,int kncPrice1,,,) = kncPriceAggregator.latestRoundData();

        uniPrice = uniPrice1;
        compPrice = compPrice1;
        snxPrice = snxPrice1;
        mkrPrice = mkrPrice1;
        kncPrice = kncPrice1;

    }
}