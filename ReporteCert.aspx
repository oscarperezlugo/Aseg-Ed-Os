<%@ Page Title="Tarrago Reach System" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReporteCert.aspx.cs" Inherits="ReachSystem.ReporteCert" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server"> 
    <div class="container">
    <div class="card">
        <div class="card-header">
                <div class="form-row">
                    <div class="col10L">                        
                        <asp:Label ID="Label6" runat="server" Text="REPORTE: CERTIFICADOS" Style="font-weight: bold; font-size: 18px;"></asp:Label>                        
                    </div>                   
                </div>
            </div>
        <div class="card-body">
                <div class="form-row">
                    <table style="width: 100%;">
                        <tr>  
                            <%--<td> <asp:Label ID="Label2" runat="server" Text="FECHA INICIO" Style="font-weight: bold; font-size: 18px;"></asp:Label><br />
                                <input class="formularioProc" placeholder="NOMBRE O APELLIDO" id="Text1" type="date" runat="server"  AutoPostBack="true"/>                           
                            </td>
                            <td><asp:Label ID="Label1" runat="server" Text="FECHA FINAL" Style="font-weight: bold; font-size: 18px;"></asp:Label><br />
                                <input class="formularioProc" placeholder="NOMBRE O APELLIDO" id="Correo" type="date" runat="server"  AutoPostBack="true"/>                            
                            </td>--%>
                            <td><asp:Label ID="Label4" runat="server" Text="ESTADO" Style="font-weight: bold; font-size: 18px;"></asp:Label><br />
                                <asp:DropDownList ID="DropDownList1" runat="server" class="formularioProc" DataSourceID="SqlDataSource2" DataTextField="Estado" DataValueField="Estado"></asp:DropDownList>
                                <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:affisDBConnectionString %>' SelectCommand="SELECT DISTINCT [Estado] FROM [Certificados]"></asp:SqlDataSource>
                            </td>
                            <td><asp:Label ID="Label3" runat="server" Text="GENERAR" Style="font-weight: bold; font-size: 18px;"></asp:Label><br />
                                <asp:Button runat="server" CssClass="botonsubmitTRESDOS" text="GENERAR REPORTE" OnClick="Unnamed_Click1"></asp:Button>                                
                            </td>                            
                        </tr>
                    </table> 
                    <hr />
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" AllowPaging="True" GridLines="None" BackColor="White" BorderStyle="None" BorderWidth="1px" CellPadding="20" ForeColor="Black" CssClass="mGrid" PagerStyle-CssClass="pgr" margin-left="2%" AlternatingRowStyle-CssClass="alt" AllowSorting="True" DataSourceID="SqlDataSource1">
                        <Columns>

                            <asp:BoundField DataField="Ejecutivo" HeaderText="Ejecutivo" SortExpression="Ejecutivo"></asp:BoundField>
                            <asp:BoundField DataField="Numero" HeaderText="Numero" SortExpression="Numero"></asp:BoundField>
                            <asp:BoundField DataField="Estado" HeaderText="Estado" SortExpression="Estado"></asp:BoundField>
                            <asp:BoundField DataField="Observaciones" HeaderText="Observaciones" SortExpression="Observaciones"></asp:BoundField>
                            <%--<asp:BoundField DataField="Plan" HeaderText="Plan" SortExpression="Plan"></asp:BoundField>
                            <asp:BoundField DataField="EstadoReclamo" HeaderText="Estado Reclamo" SortExpression="EstadoReclamo"></asp:BoundField>--%>
                        </Columns>
                        <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                        <HeaderStyle BackColor="white" Font-Bold="True" ForeColor="black" />
                        <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                        <SelectedRowStyle BackColor="#CCCCCC" Font-Bold="True" ForeColor="White" />
                        <SortedAscendingCellStyle BackColor="#F7F7F7" />
                        <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                        <SortedDescendingCellStyle BackColor="#E5E5E5" />
                        <SortedDescendingHeaderStyle BackColor="#242121" />
                        <PagerStyle CssClass="pgr"></PagerStyle>
                    </asp:GridView>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:affisDBConnectionString %>' SelectCommand="SELECT [Ejecutivo], [Numero], [Estado], [Observaciones] FROM [Certificados] WHERE Estado = @est ">
                        <SelectParameters>                                
                       <%--     <asp:CookieParameter CookieName="paramIni" Name="fechaini" Type="String"></asp:CookieParameter> 
                            <asp:CookieParameter CookieName="paramFin" Name="fechafin" Type="String"></asp:CookieParameter> --%>
                            <asp:CookieParameter CookieName="paramcerest" Name="est" Type="String"></asp:CookieParameter> 
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
            

            </div>
        </div>
        </div>

</asp:Content>
