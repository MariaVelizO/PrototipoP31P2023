/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controlador;
import java.util.List;
import modelo.daoCliente
/**
 *
 * @author visitante
 */
public class clsCliente {
    private int IdCliente;
    private String NombreCliente;
    private String NitCliente;

    public clsCliente() {
    }
    
    public clsCliente(int IdCliente) {
        this.IdCliente = IdCliente;
    }    
    
    public clsCliente(String NombreCliente, String NitCliente) {
        this.NombreCliente = NombreCliente;
        this.NitCliente = NitCliente;
    }
    
    public clsCliente(int IdCliente, String NombreCliente, String NitCliente) {
        this.IdCliente = IdCliente;
        this.NombreCliente = NombreCliente;
        this.NitCliente= NitCliente;
    }    

    public int getIdCliente() {
        return IdCliente;
    }

    public void setIdCliente(int IdCliente) {
        this.IdCliente = IdCliente;
    }

    public String getNombreCliente() {
        return NombreCliente;
    }

    public void setNombreCliente(String NombreCliente) {
        this.NombreCliente = NombreCliente;
    }

    public String getNitCliente() {
        return NitCliente;
    }

    public void setNitCliente(String NitCliente) {
        this.NitCliente = NitCliente;
    }
    @Override
    public String toString() {
        return "clsUsuario{" + "IdUsuario=" + IdCliente + ", NombreUsuario=" + NombreCliente + ", ContrasenaUsuario=" + NitCliente + '}';
    }
    //Metodos de acceso a la capa controlador
    public clsCliente getBuscarInformacionClientePorNombre(clsCliente cliente)
    {
        daoCliente daocliente = new daoCliente();
        return daocliente.consultaUsuariosPorNombre(cliente);
    }
    public clsCliente getBuscarInformacionClientePorId(clsCliente cliente)
    {
        daoCliente daocliente = new daoCliente();
        return daocliente.consultaUsuariosPorId(cliente);
    }    
    public List<clsCliente> getListadoClientes()
    {
        daoCliente daocliente = new daoCliente();
        List<clsCliente> listadoUsuarios = daocliente.consultaUsuarios();
        return listadoUsuarios;
    }
    public int setBorrarCliente(clsCliente cliente)
    {
        daoCliente daocliente = new daoCliente();
        return daocliente.borrarUsuarios(cliente);
    }          
    public int setIngresarCliente(clsCliente cliente)
    {
        daoCliente daocliente = new daoCliente();
        return daocliente.ingresaUsuarios(cliente);
    }              
    public int setModificarCliente(clsCliente cliente)
    {
        daoCliente daocliente = new daoCliente();
        return daocliente.actualizaUsuarios(cliente);
    }              
}
