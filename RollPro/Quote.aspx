<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quote.aspx.cs" Inherits="RollPro.Quote" %>

<%@ Register assembly="DevExpress.Web.ASPxTreeList.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <table>
            <tr>
                <td>1.</td>
                <td>Quantity:</td>
                <td><asp:TextBox ID="Quantity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>2.</td>
                <td>Width:</td>
                <td>
                    <asp:RadioButtonList ID="rblWidth" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="in" Value="in" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="mm" Value="mm"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>

            <tr>
                <td></td>
                <td><asp:RadioButton ID="rbWidthA" runat="server" Checked="true" GroupName="grWidth" OnCheckedChanged="rbWidthA_CheckedChanged" AutoPostBack="true"/>A:</td>
                <td><asp:TextBox ID="WidthA" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:RadioButton ID="rbWidthB" runat="server" GroupName="grWidth" OnCheckedChanged="rbWidthA_CheckedChanged" AutoPostBack="true"/>B:</td>
                <td><asp:TextBox ID="WidthB" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:Image ID="Image2" runat="server" ImageUrl="~/Images/face_2.jpg" Width="230"/></td>
            </tr>
            <tr>
                <td>3.</td>
                <td>Height:</td>
                <td>
                    <asp:RadioButtonList ID="rblHeight" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" OnSelectedIndexChanged="rblHeight_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="in" Value="in" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="mm" Value="mm"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:RadioButton ID="rbHeightC" runat="server" Checked="true" GroupName="grHeight" OnCheckedChanged="rbHeight_CheckedChanged" AutoPostBack="true"/>C:</td>
                <td><asp:TextBox ID="HeightC" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td><asp:RadioButton ID="rbHeightD" runat="server" GroupName="grHeight" OnCheckedChanged="rbHeight_CheckedChanged" AutoPostBack="true"/>D:</td>
                <td><asp:TextBox ID="HeightD" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td>E:</td>
                <td><asp:TextBox ID="HeightE" runat="server" Text="8.11 (206)" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:Image ID="Image3" runat="server" ImageUrl="~/Images/Side WIEW.jpg" Width="230"/></td>
            </tr>
            <tr>
                <td>4.</td>
                <td>Operation:</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <dx:ASPxGridView ID="grid" ClientInstanceName="grid" runat="server" DataSourceID="SqlDataSource1" KeyFieldName="OperationID" Width="100%" AutoGenerateColumns="False">
                        <Columns>
                            <dx:GridViewDataTextColumn FieldName="Name" VisibleIndex="0">
                            </dx:GridViewDataTextColumn>
                        </Columns>
                        <SettingsDataSecurity AllowDelete="False" AllowEdit="False" AllowInsert="False" />
                        <Templates>
                            <DetailRow>
                                <dx:ASPxGridView ID="detailGrid" runat="server" DataSourceID="SqlDataSource2" KeyFieldName="OperationID"
                                    Width="100%" OnBeforePerformDataSelect="detailGrid_DataSelect">
                                    <Columns>
                                        <dx:GridViewDataColumn FieldName="OperationID" Caption="Operation Id" VisibleIndex="1" />
                                        <dx:GridViewDataColumn FieldName="Name" VisibleIndex="0" />
                                        <dx:GridViewDataColumn FieldName="Channel" VisibleIndex="0" />
                                        <dx:GridViewDataColumn FieldName="Image" VisibleIndex="0" />
                                        <dx:GridViewDataColumn FieldName="Quantity" VisibleIndex="0" Name="Quantity" />
                                        </Columns>
                                    <Settings ShowFooter="False" />
                                </dx:ASPxGridView>
                            </DetailRow>
                        </Templates>
                        <SettingsDetail ShowDetailRow="true" />
                    </dx:ASPxGridView>
                    
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=RUS\SQLEXPRESS;Initial Catalog=RollPro;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [OperationID], [Name] FROM [Operation] WHERE ([ParentOperationID] IS NULL)"></asp:SqlDataSource>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=RUS\SQLEXPRESS;Initial Catalog=RollPro;Integrated Security=True;MultipleActiveResultSets=True;Application Name=EntityFramework" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [OperationID], [ParentOperationID], [Name], [Channel], [Quantity], [Image] FROM [Operation] WHERE (([ParentOperationID] IS NOT NULL) AND ([ParentOperationID] = @OperationID)) ORDER BY [ParentOperationID]">
                        <SelectParameters>
                            <asp:SessionParameter Name="OperationID" SessionField="OperationID" Type="String" />
                        </SelectParameters>
                    </asp:SqlDataSource>
                    <%--<asp:EntityDataSource runat="server" ID="ParentOperationDataSource" ContextTypeName="RollProEntities" EntitySetName="Operation"/>
                    <asp:EntityDataSource runat="server" ID="DetailOperationDataSource" ContextTypeName="RollProEntities" EntitySetName="Operation" Where="it.ParentOperationID = @OperationID">
                        <WhereParameters>
                            <asp:SessionParameter Name="OperationID" SessionField="OperationID" Type="String" />
                        </WhereParameters>
                    </asp:EntityDataSource>--%>
                </td>
            </tr>
        </table>
    </div>
        
    </form>
</body>
</html>
