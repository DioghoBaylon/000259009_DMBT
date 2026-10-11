// SPDX-License-Identifier: GPL-3.0
pragma solidity 0.8.1;

//Temática: Inventario de objetos de videojuegos
contract Inventario259009 {

    struct Objeto {
        uint256 id;
        string nombre;
        uint256 nivel;
        string tipo;
    }

    Objeto[] public Objetos;

    uint256 public posicion;
    address public direccion;


    constructor(uint256 _posicion) {
    posicion = _posicion;
    direccion = msg.sender;
    }

}