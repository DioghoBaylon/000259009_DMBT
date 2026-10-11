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

    Objeto[] public objetos;

    uint256 public posicion;
    address public direccion;


    constructor(uint256 _posicion) {
    posicion = _posicion;
    direccion = msg.sender;
    }

    function agregarObjeto(uint256 _id, string memory _nombre, uint256 _nivel, string memory _tipo) public {
        objetos.push(Objeto(_id, _nombre, _nivel, _tipo));
    }

    function contarElementos() public view returns (uint256) {
    return objetos.length;
    }

    function cambiarDireccion(address _nuevaDireccion) public {
    direccion = _nuevaDireccion;
    }

}