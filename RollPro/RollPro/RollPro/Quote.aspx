<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Quote.aspx.cs" Inherits="RollPro.Quote" %>

<%@ Register assembly="DevExpress.Web.ASPxTreeList.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web.ASPxTreeList" tagprefix="dx" %>

<%@ Register assembly="DevExpress.Web.v14.2, Version=14.2.6.0, Culture=neutral, PublicKeyToken=b88d1754d700e49a" namespace="DevExpress.Web" tagprefix="dx" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css"/>

    <!-- Optional theme -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css"/>

    <!-- Latest compiled and minified JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="Content/Style.css"/>
    <style type="text/css">
        .auto-style1 {
            float: left;
            padding-right: 10px;
            width: 302px;
        }
        .auto-style2 {
            width: 302px
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container">
        <%--<dx:ASPxCallback ID="ASPxCallback1" runat="server" ClientInstanceName="Callback1"
        OnCallback="ASPxCallback1_Callback">
        <ClientSideEvents CallbackComplete="function (s, e) { seWidthACm.SetText(e.result); }" />
    </dx:ASPxCallback>--%>
    <%--    <div class="row">
            <div class="col-sm-4">.col-sm-4
                <div class="row">
                    <div class="col-sm-1">1.</div>
                    <div class="col-sm-2">Quantity:</div>
                    <div class="col-sm-9"><asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></div>
                </div>
            </div>
            <div class="col-sm-4">.col-sm-4
                <div class="row">
                    <div class="col-sm-1">5.</div>
                    <div class="col-sm-11">Locking:</div>
                </div>
            </div>
            <div class="col-sm-4">.col-sm-4
                <div class="row">
                    <div class="col-sm-1">9.</div>
                    <div class="col-sm-11">Aluminum bottom angle:</div>
                </div>
            </div>
            
            
        </div>
    </div>


        <br/>
        <br/>
        <br/>
        <br/>--%>

        <div class="controls">
            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">1.</label>
                    <label class="secondLabel">Quantity:</label>
                    <dx:ASPxSpinEdit ID="seQuantity" runat="server" Number="0" MinValue="0" MaxValue="100" CssClass="quantity" Theme="Aqua" DisplayFormatString="D"></dx:ASPxSpinEdit><br/>
                </div>
            </div>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">2.</label>
                    <label class="secondLabel">Width:</label>
                    <asp:RadioButtonList ID="rblWidth" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl" OnSelectedIndexChanged="rblWidth_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="in" Value="in" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="mm" Value="mm"></asp:ListItem>
                    </asp:RadioButtonList>
                </div><br/>
                <div class="inlineBlock">
                    <div class="space">
                        <asp:RadioButton ID="rbWidthA" runat="server" Checked="true" GroupName="grWidth" OnCheckedChanged="rbWidthA_CheckedChanged" AutoPostBack="true"/><label>A:</label>
                        <dx:ASPxSpinEdit ID="seWidthAInches" runat="server" Number="0" MaxValue="1000" CssClass="width" Theme="Aqua" DisplayFormatString="F" ClientInstanceName="seWidthAInches" AutoPostBack="true" OnValueChanged="seWidthAInches_ValueChanged">
                            <%--<ClientSideEvents ValueChanged="function(s, e) {
                                
	                            if (s.GetValue() != '')
                                {
                                    seWidthACm.SetNumber(Math.round(s.GetValue()*1.0 / 0.039370));
                                }
                                
                            }" />--%>
                        </dx:ASPxSpinEdit><label class="lblwidth">in</label>
                        <dx:ASPxSpinEdit ID="seWidthACm" runat="server" Number="0" MinValue="0" MaxValue="10000" CssClass="width" Theme="Aqua" Enabled="false" DisplayFormatString="D" ClientInstanceName="seWidthACm" AutoPostBack="true" OnValueChanged="seWidthACm_ValueChanged">
                            <%--<ClientSideEvents ValueChanged="function(s, e) {
                                
	                            if (s.GetValue() != '')
                                {
                                    seWidthAInches.SetNumber(Math.round((s.GetValue()*1.0 * 0.039370)*100)/100);
                                }
                                
                            }" />--%>
                        </dx:ASPxSpinEdit><label class="lblwidth">cm</label>
                    </div>
                </div><br/>
                <div class="inlineBlock">
                    <div class="space">
                        <asp:RadioButton ID="rbWidthB" runat="server" GroupName="grWidth" OnCheckedChanged="rbWidthA_CheckedChanged" AutoPostBack="true"/><label>B:</label>
                        <dx:ASPxSpinEdit ID="seWidthBInches" runat="server" Number="0" MinValue="0" MaxValue="1000" CssClass="width" Theme="Aqua" DisplayFormatString="F" Enabled="false" ClientInstanceName="seWidthBInches" OnValueChanged="seWidthBInches_ValueChanged" AutoPostBack="true"></dx:ASPxSpinEdit><label class="lblwidth">in</label>
                        <dx:ASPxSpinEdit ID="seWidthBCm" runat="server" Number="0" MinValue="0" MaxValue="10000" CssClass="width" Theme="Aqua" Enabled="false" DisplayFormatString="D" ClientInstanceName="seWidthBCm" OnValueChanged="seWidthBCm_ValueChanged" AutoPostBack="true"></dx:ASPxSpinEdit><label class="lblwidth">cm</label>
                    </div>
                </div><br/>
                <div class="space">
                    <asp:Image ID="imgWidth" runat="server" ImageUrl="~/Images/face_2.jpg" Width="230"/>
                </div>
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">3.</label>
                    <label class="secondLabel">Height:</label>
                    <asp:RadioButtonList ID="rblHeight" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" OnSelectedIndexChanged="rblHeight_SelectedIndexChanged" AutoPostBack="true" CssClass="rbl">
                        <asp:ListItem Text="in" Value="in" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="mm" Value="mm"></asp:ListItem>
                    </asp:RadioButtonList>
                </div><br/>
                <div class="inlineBlock">
                    <div class="space">
                        <asp:RadioButton ID="rbHeightC" runat="server" Checked="true" GroupName="grHeight" OnCheckedChanged="rbHeight_CheckedChanged" AutoPostBack="true"/><label>C:</label>
                        <%--<asp:TextBox ID="HeightC" runat="server" Width="200px"></asp:TextBox>--%>
                        <dx:ASPxSpinEdit ID="seHeightCInches" runat="server" Number="0" MaxValue="1000" CssClass="width" Theme="Aqua" DisplayFormatString="F" ClientInstanceName="seHeightCInches" AutoPostBack="true" OnValueChanged="seHeightCInches_ValueChanged"></dx:ASPxSpinEdit><label class="lblwidth">in</label>
                        <dx:ASPxSpinEdit ID="seHeightCCm" runat="server" Number="0" MinValue="0" MaxValue="10000" CssClass="width" Theme="Aqua" Enabled="false" DisplayFormatString="D" ClientInstanceName="seHeightCCm" AutoPostBack="true" OnValueChanged="seHeightCCm_ValueChanged"></dx:ASPxSpinEdit><label class="lblwidth">cm</label>
                    </div>
                </div><br/>
                <div class="inlineBlock">
                    <div class="space">
                        <asp:RadioButton ID="rbHeightD" runat="server" GroupName="grHeight" OnCheckedChanged="rbHeight_CheckedChanged" AutoPostBack="true"/><label>D:</label>
                        <%--<asp:TextBox ID="HeightD" runat="server" Enabled="false" Width="200px"></asp:TextBox>--%>
                        <dx:ASPxSpinEdit ID="seHeightDInches" runat="server" Number="0" MinValue="0" MaxValue="1000" CssClass="width" Theme="Aqua" DisplayFormatString="F" Enabled="false" ClientInstanceName="seHeightCInches" OnValueChanged="seHeightDInches_ValueChanged" AutoPostBack="true"></dx:ASPxSpinEdit><label class="lblwidth">in</label>
                        <dx:ASPxSpinEdit ID="seHeightDCm" runat="server" Number="0" MinValue="0" MaxValue="10000" CssClass="width" Theme="Aqua" Enabled="false" DisplayFormatString="D" ClientInstanceName="seHeightDCm" OnValueChanged="seHeightDCm_ValueChanged" AutoPostBack="true"></dx:ASPxSpinEdit><label class="lblwidth">cm</label>
                    </div>
                </div><br/>
                <div class="space">
                    <asp:Image ID="imgHeight" runat="server" ImageUrl="~/Images/Side WIEW.jpg" Width="230"/>
                </div>
            </div><br/>

            <div class="block">
                <label class="firstLabel">4.</label>
                <label class="secondLabel">Operation:</label>
                <div class="space">
                    <asp:RadioButtonList ID="rblParentOperations" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
                        <asp:ListItem Text="Tape Coiler" Value="Tape Coiler"></asp:ListItem>
                        <asp:ListItem Text="Tape Winch" Value="Tape Winch"></asp:ListItem>
                        <asp:ListItem Text="Spring Manual Push Up" Value="Spring Manual Push Up"></asp:ListItem>
                        <asp:ListItem Text="Crank with removable handle" Value="Crank with removable handle"></asp:ListItem>
                        <asp:ListItem Text="Electric Motor" Value="Electric Motor"></asp:ListItem>
                    </asp:RadioButtonList>
                    <div class="childCheckboxes">
                        <asp:CheckBox ID="cbWithManualOverride" runat="server" /><label class="childCheckbox">with Manual Override</label><br/>
                        <asp:CheckBox ID="cbSecuritySpring" runat="server" /><label class="childCheckbox">Security Spring</label><br/>
                        <asp:CheckBox ID="cbSwitchPaddleMomentary" runat="server" /><label class="childCheckbox">Switch paddle Momentary</label><br/>
                        <div class="inlineBlock">
                            <asp:CheckBox ID="cbHandheldRemote" runat="server" /><label class="childCheckbox">Handheld Remote</label>
                            <asp:RadioButtonList ID="rblHandHeldRemote" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div><br/>
                        <div class="inlineBlock">
                            <asp:CheckBox ID="cbWallMountRemote" runat="server" /><label class="childCheckbox">Wall mount Remote</label>
                            <asp:RadioButtonList ID="rblWallMountRemote" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                                <asp:ListItem Text="1" Value="1"></asp:ListItem>
                                <asp:ListItem Text="4" Value="4"></asp:ListItem>
                                <asp:ListItem Text="6" Value="6"></asp:ListItem>
                            </asp:RadioButtonList>
                        </div><br/>
                        <asp:CheckBox ID="cbKeySwitchWallMount" runat="server" /><label class="childCheckbox">Key Switch Wall mount</label><br/>
                        <asp:CheckBox ID="cbWirelessKeyPad" runat="server" /><label class="childCheckbox">Wireless key pad</label>
                    </div>
                </div>
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">5.</label>
                    <label class="secondLabel">Locking:</label>
                </div><br/>
                <div class="space">
                    <asp:RadioButton ID="rbNoLocking" runat="server" GroupName="grLocking"/><label>No</label><br/>
                    <asp:RadioButton ID="rbKeyedPushLock" runat="server" GroupName="grLocking"/><label>Keyed Push Lock</label><br/>
                    <div class="inlineBlock">
                        <asp:RadioButton ID="rbSlideBolt" runat="server" GroupName="grLocking"/><label class="locking">Slide Bolt</label>
                        <asp:RadioButtonList ID="rblSlideBoltSides" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                            <asp:ListItem Text="Side A" Value="Side A" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Side B" Value="Side B"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div><br/>
                    <div class="inlineBlock">
                        <asp:RadioButton ID="rbCylKeyLock" runat="server" GroupName="grLocking"/><label class="locking">Cyl. key lock</label>
                        <asp:RadioButtonList ID="rblCylKeyLockSides" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                            <asp:ListItem Text="Side A" Value="Side A" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Side B" Value="Side B"></asp:ListItem>
                        </asp:RadioButtonList>
                    </div>
                </div>
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">6.</label>
                    <label>Control Unit Side:</label>
                </div><br/>
                <div class="space">
                    <asp:RadioButtonList ID="rblControlUnitSide" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" CssClass="rbl">
                        <asp:ListItem Text="Left" Value="Left" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Right" Value="Right"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">7.</label>
                    <label>Slat Profile:</label>
                </div><br/>
                <div class="space">
                    <div class="panel panel-primary">
                        <div class="panel-heading">Foam injected</div>
                            <div class="panel-body">
                            <div class="inlineBlock">
                                <asp:RadioButton ID="rbPA40" runat="server" GroupName="grFoamInjected"/><label class="slat">PA 40</label>
                                <label class="slat2">Standart Foam</label>
                                <asp:RadioButtonList ID="rblPA40PP53orPP68" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                                    <asp:ListItem Text="PP53" Value="PP53" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="PP68" Value="PP68"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div><br/>
                            <div class="inlineBlock">
                            <asp:RadioButton ID="rbPAR40" runat="server" GroupName="grFoamInjected"/><label class="slat">PA R40</label>
                            <label class="slat2">Reinforced</label>
                            <asp:RadioButtonList ID="rblPAR40PP53orPP68" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                                <asp:ListItem Text="PP53" Value="PP53" Selected="True"></asp:ListItem>
                                <asp:ListItem Text="PP68" Value="PP68"></asp:ListItem>
                            </asp:RadioButtonList>
                            </div><br/>
                            <div class="inlineBlock">
                                <asp:RadioButton ID="rbPAH40" runat="server" GroupName="grFoamInjected"/><label class="slat">PA H40</label>
                                <label class="slat2">Hard foam</label>
                                <asp:RadioButtonList ID="rblPAH40PP53orPP68" runat="server" RepeatDirection="Horizontal" RepeatLayout="Flow" CssClass="rbl">
                                    <asp:ListItem Text="PP53" Value="PP53" Selected="True"></asp:ListItem>
                                    <asp:ListItem Text="PP68" Value="PP68"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div><br/>
                            <div class="inlineBlock">
                                <asp:RadioButton ID="rbPA77" runat="server" GroupName="grFoamInjected"/><label class="slat">PA 77</label>
                                <label class="slat2">Standart foam</label>
                            </div><br/>
                            <div class="inlineBlock">
                                <asp:RadioButton ID="rbPA55" runat="server" GroupName="grFoamInjected"/><label class="slat">PA 55</label>
                                <label class="slat2">Standart foam</label>
                            </div><br/>
                            <div class="inlineBlock">
                                <asp:RadioButton ID="rbPAR55" runat="server" GroupName="grFoamInjected"/><label class="slat">PA R55</label>
                                <label class="slat2">Reinforced</label>
                            </div><br/>
                            <div class="inlineBlock">
                                <asp:RadioButton ID="rbPAH55" runat="server" GroupName="grFoamInjected"/><label class="slat">PA H55</label>
                                <label class="slat2">Hard foam</label>
                            </div>
                        </div>
                    </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">Single wall extruded</div>
                        <div class="panel-body">
                            <asp:RadioButton ID="rbPEK52" runat="server" GroupName="grWallExtruded"/><label class="slat">PEK 52</label>
                            <asp:RadioButton ID="rbPEKP52" runat="server" GroupName="grWallExtruded"/><label class="slat">PEKP 52</label>
                            <asp:RadioButton ID="rbPEK77" runat="server" GroupName="grWallExtruded"/><label class="slat">PEK 77</label>
                            <asp:RadioButton ID="rbPEKP77" runat="server" GroupName="grWallExtruded"/><label class="slat">PEKP 77</label>
                        </div>
                    </div>
                    <div class="panel panel-primary">
                        <div class="panel-heading">Double wall extruded</div>
                        <div class="panel-body">
                            <asp:RadioButton ID="RadioButton20" runat="server" GroupName="grWallExtruded"/><label class="slat">PE 55</label>
                        </div>
                    </div>
                </div>                    
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">8.</label>
                    <label>Box size (A,B):</label>
                </div><br/>
                <div class="space">
                    <asp:RadioButtonList ID="rblBoxSize" runat="server" RepeatDirection="Vertical" RepeatLayout="Table" RepeatColumns="2" CssClass="rbl">
                        <asp:ListItem Text="SK137 mm (5.5'')" Value="SK137 mm (5.5'')"></asp:ListItem>
                        <asp:ListItem Text="SK165 mm (6.5'')" Value="SK165 mm (6.5'')"></asp:ListItem>
                        <asp:ListItem Text="SK205 mm (8'')" Value="SK205 mm (8'')" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="SK300 mm (12'')" Value="SK300 mm (12'')"></asp:ListItem>
                        <asp:ListItem Text="SK150 mm (6'')" Value="SK150 mm (6'')"></asp:ListItem>
                        <asp:ListItem Text="SK180 mm (7'')" Value="SK180 mm (7'')"></asp:ListItem>
                        <asp:ListItem Text="SK250 mm (10'')" Value="SK250 mm (10'')"></asp:ListItem>
                        <asp:ListItem Text="SK350 mm (14'')" Value="SK350 mm (14'')"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">9.</label>
                    <label>Aluminium bottom angle:</label>
                </div><br/>
                <div class="space">
                    <asp:RadioButtonList ID="rblAluminiumBottomAngle" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" CssClass="rbl">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">10.</label>
                    <label>Perforated:</label>
                </div><br/>
                <div class="space">
                    <asp:RadioButtonList ID="rblPerforated" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" CssClass="rbl">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">11.</label>
                    <label>Exit strap / wire position:</label>
                </div><br/>
                <div class="space">
                    <asp:Image ID="imgExitStrap" runat="server" ImageUrl="~/Images/EXIT.jpg" Width="230"/><br/>
                    <asp:RadioButtonList ID="rblExitStrap" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" RepeatColumns="5" CssClass="rbl">
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div><br/>

            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">12.</label>
                    <label>Color:</label>
                </div><br/>
                <div class="space">
                    <div class="inlineBlock">
                        <label class="color">Slat:</label>
                        <dx:ASPxComboBox ID="cbColorSlat" runat="server" ShowImageInEditBox="True" CssClass="cbInline" Theme="Aqua">
                            <Items>
                                <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                                <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                                <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                                <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                            </Items>
                            <ItemImage Height="23px" Width="23px" />
                        </dx:ASPxComboBox>
                    </div><br/>
                    <div class="inlineBlock">
                        <label class="color">Box:</label>
                        <dx:ASPxComboBox ID="cbColorBox" runat="server" ShowImageInEditBox="True" CssClass="cbInline" Theme="Aqua">
                            <Items>
                                <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                                <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                                <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                                <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                            </Items>
                            <ItemImage Height="23px" Width="23px" />
                        </dx:ASPxComboBox>
                    </div><br/>
                    <div class="inlineBlock">
                        <label class="color">Guide:</label>
                        <dx:ASPxComboBox ID="cbColorGuide" runat="server" ShowImageInEditBox="True" CssClass="cbInline" Theme="Aqua">
                            <Items>
                                <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                                <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                                <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                                <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                            </Items>
                            <ItemImage Height="23px" Width="23px" />
                        </dx:ASPxComboBox>
                    </div><br/>
                    <div class="inlineBlock">
                        <label class="color">Bottom bar:</label>
                        <dx:ASPxComboBox ID="cbColorBottomBar" runat="server" ShowImageInEditBox="True" CssClass="cbInline" Theme="Aqua">
                            <Items>
                                <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                                <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                                <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                                <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                            </Items>
                            <ItemImage Height="23px" Width="23px" />
                        </dx:ASPxComboBox>
                    </div><br/>
                </div>
            </div><br/>
            
            <div class="block">
                <div class="inlineBlock">
                    <label class="firstLabel">13.</label>
                    <label>Guide rail drilling:</label>
                </div><br/>
                <div class="space">
                    <asp:Image ID="imgGuideRailDrilling" runat="server" ImageUrl="~/Images/Drilling.jpg" Width="230"/><br/>
                    <asp:RadioButtonList ID="rblGuideRailDrilling" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" CssClass="rbl">
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                        <asp:ListItem Text="Recessed" Value="Recessed"></asp:ListItem>
                        <asp:ListItem Text="Surface" Value="Surface"></asp:ListItem>
                    </asp:RadioButtonList>
                </div>
            </div><br/>
    

        <%--<table class="Column1">
            <tr>
                <td class="col1">1.</td>
                <td class="col2">Quantity:</td>
                <td class="col3"><asp:TextBox ID="Quantity" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td>2.</td>
                <td class="auto-style1">Width:</td>
                <td class="col3">
                    <asp:RadioButtonList ID="rblWidth" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="in" Value="in" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="mm" Value="mm"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>

            <tr>
                <td></td>
                <td class="auto-style1"><asp:RadioButton ID="rbWidthA" runat="server" Checked="true" GroupName="grWidth" OnCheckedChanged="rbWidthA_CheckedChanged" AutoPostBack="true"/>A:</td>
                <td class="col3"><asp:TextBox ID="WidthA" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2"><asp:RadioButton ID="rbWidthB" runat="server" GroupName="grWidth" OnCheckedChanged="rbWidthA_CheckedChanged" AutoPostBack="true"/>B:</td>
                <td><asp:TextBox ID="WidthB" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:Image ID="imgWidth" runat="server" ImageUrl="~/Images/face_2.jpg" Width="230"/></td>
            </tr>
            <tr>
                <td>3.</td>
                <td class="auto-style2">Height:</td>
                <td>
                    <asp:RadioButtonList ID="rblHeight" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table" OnSelectedIndexChanged="rblHeight_SelectedIndexChanged" AutoPostBack="true">
                        <asp:ListItem Text="in" Value="in" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="mm" Value="mm"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2"><asp:RadioButton ID="rbHeightC" runat="server" Checked="true" GroupName="grHeight" OnCheckedChanged="rbHeight_CheckedChanged" AutoPostBack="true"/>C:</td>
                <td><asp:TextBox ID="HeightC" runat="server"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2"><asp:RadioButton ID="rbHeightD" runat="server" GroupName="grHeight" OnCheckedChanged="rbHeight_CheckedChanged" AutoPostBack="true"/>D:</td>
                <td><asp:TextBox ID="HeightD" runat="server" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2">E:</td>
                <td><asp:TextBox ID="HeightE" runat="server" Text="8.11 (206)" Enabled="false"></asp:TextBox></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:Image ID="imgHeight" runat="server" ImageUrl="~/Images/Side WIEW.jpg" Width="230"/></td>
            </tr>
            <tr>
                <td>4.</td>
                <td class="auto-style2">Operation:</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:RadioButtonList ID="rblParentOperations" runat="server" RepeatDirection="Vertical" RepeatLayout="Table">
                        <asp:ListItem Text="Tape Coiler" Value="Tape Coiler"></asp:ListItem>
                        <asp:ListItem Text="Tape Winch" Value="Tape Winch"></asp:ListItem>
                        <asp:ListItem Text="Spring Manual Push Up" Value="Spring Manual Push Up"></asp:ListItem>
                        <asp:ListItem Text="Crank with removable handle" Value="Crank with removable handle"></asp:ListItem>
                        <asp:ListItem Text="Electric Motor" Value="Electric Motor"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:CheckBox ID="cbWithManualOverride" runat="server" />with Manual Override</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:CheckBox ID="cbSecuritySpring" runat="server" />Security Spring</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:CheckBox ID="cbSwitchPaddleMomentary" runat="server" />Switch paddle Momentary</td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2"><asp:CheckBox ID="cbHandheldRemote" runat="server" />Handheld Remote</td>
                <td>
                    <asp:RadioButtonList ID="rblHandHeldRemote" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td class="auto-style2"><asp:CheckBox ID="cbWallMountRemote" runat="server" />Wall mount Remote</td>
                <td>
                    <asp:RadioButtonList ID="rblWallMountRemote" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:CheckBox ID="cbKeySwitchWallMount" runat="server" />Key Switch Wall mount</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:CheckBox ID="cbWirelessKeyPad" runat="server" />Wireless key pad</td>
            </tr>
        </table>

        <table class="Column2">
            <tr>
                <td>5.</td>
                <td>Locking</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:RadioButton ID="rbNoLocking" runat="server" GroupName="grLocking"/>No</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:RadioButton ID="rbKeyedPushLock" runat="server" GroupName="grLocking"/>Keyed Push Lock</td>
            </tr>
            <tr>
                <td></td>
                <td><asp:RadioButton ID="rbSlideBolt" runat="server" GroupName="grLocking"/>Slide Bolt</td>
                <td>
                    <asp:RadioButtonList ID="rblSlideBoltSides" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="Side A" Value="Side A" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Side B" Value="Side B"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><asp:RadioButton ID="rbCylKeyLock" runat="server" GroupName="grLocking"/>Cyl. key lock</td>
                <td>
                    <asp:RadioButtonList ID="rblCylKeyLockSides" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="Side A" Value="Side A" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Side B" Value="Side B"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>6.</td>
                <td>Control Unit Side</td>
                <td>
                    <asp:RadioButtonList ID="rblControlUnitSide" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="Left" Value="Left" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Right" Value="Right"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>7.</td>
                <td>Slat Profile</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Panel ID="pnlFoamInjected" runat="server" GroupingText="Foam injected">
                        <table>
                            <tr>
                                <td><asp:RadioButton ID="rbPA40" runat="server" GroupName="grFoamInjected"/>PA 40</td>
                                <td>Standart Foam</td>
                                <td>
                                    <asp:RadioButtonList ID="rblPA40PP53orPP68" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                                        <asp:ListItem Text="PP53" Value="PP53" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="PP68" Value="PP68"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPAR40" runat="server" GroupName="grFoamInjected"/>PA R40</td>
                                <td>Reinforced</td>
                                <td>
                                    <asp:RadioButtonList ID="rblPAR40PP53orPP68" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                                        <asp:ListItem Text="PP53" Value="PP53" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="PP68" Value="PP68"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPAH40" runat="server" GroupName="grFoamInjected"/>PA H40</td>
                                <td>Hard foam</td>
                                <td>
                                    <asp:RadioButtonList ID="rblPAH40PP53orPP68" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                                        <asp:ListItem Text="PP53" Value="PP53" Selected="True"></asp:ListItem>
                                        <asp:ListItem Text="PP68" Value="PP68"></asp:ListItem>
                                    </asp:RadioButtonList>
                                </td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPA77" runat="server" GroupName="grFoamInjected"/>PA 77</td>
                                <td>Standart foam</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPA55" runat="server" GroupName="grFoamInjected"/>PA 55</td>
                                <td>Standart foam</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPAR55" runat="server" GroupName="grFoamInjected"/>PA R55</td>
                                <td>Reinforced</td>
                                <td></td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPAH55" runat="server" GroupName="grFoamInjected"/>PA H55</td>
                                <td>Hard foam</td>
                                <td></td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Panel ID="pnlSingleWallExtruded" runat="server" GroupingText="Single wall extruded">
                        <table>
                            <tr>
                                <td><asp:RadioButton ID="rbPEK52" runat="server" GroupName="grWallExtruded"/>PEK 52</td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPEKP52" runat="server" GroupName="grWallExtruded"/>PEKP 52</td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPEK77" runat="server" GroupName="grWallExtruded"/>PEK 77</td>
                            </tr>
                            <tr>
                                <td><asp:RadioButton ID="rbPEKP77" runat="server" GroupName="grWallExtruded"/>PEKP 77</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:Panel ID="pnlDoubleWallExtruded" runat="server" GroupingText="Double wall extruded">
                        <table>
                            <tr>
                                <td><asp:RadioButton ID="rbPE55" runat="server" GroupName="grWallExtruded"/>PE 55</td>
                            </tr>
                        </table>
                    </asp:Panel>
                </td>
            </tr>
            <tr>
                <td>8.</td>
                <td>Box size (A,B)</td>
                <td></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:RadioButtonList ID="rblBoxSize" runat="server" RepeatDirection="Vertical" RepeatLayout="Table" Height="57px" Width="134px">
                        <asp:ListItem Text="SK137 mm (5.5'')" Value="SK137 mm (5.5'')"></asp:ListItem>
                        <asp:ListItem Text="SK165 mm (6.5'')" Value="SK165 mm (6.5'')"></asp:ListItem>
                        <asp:ListItem Text="SK205 mm (8'')" Value="SK205 mm (8'')" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="SK300 mm (12'')" Value="SK300 mm (12'')"></asp:ListItem>
                        <asp:ListItem Text="SK150 mm (6'')" Value="SK150 mm (6'')"></asp:ListItem>
                        <asp:ListItem Text="SK180 mm (7'')" Value="SK180 mm (7'')"></asp:ListItem>
                        <asp:ListItem Text="SK250 mm (10'')" Value="SK250 mm (10'')"></asp:ListItem>
                        <asp:ListItem Text="SK350 mm (14'')" Value="SK350 mm (14'')"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>
        <table class="Column3">
            <tr>
                <td>9.</td>
                <td>Aluminium bottom angle</td>
                <td><asp:RadioButtonList ID="rblAluminiumBottomAngle" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList></td>
            </tr>
            <tr>
                <td>10.</td>
                <td>Perforated</td>
                <td>
                    <asp:RadioButtonList ID="rblPerforated" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="Yes" Value="Yes"></asp:ListItem>
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>11.</td>
                <td colspan="2">Exit strap / wire position</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:Image ID="imgExitStrap" runat="server" ImageUrl="~/Images/EXIT.jpg" Width="230"/></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:RadioButtonList ID="rblExitStrap" runat="server" RepeatDirection="Vertical" RepeatLayout="Table" Height="16px" Width="40px">
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                        <asp:ListItem Text="1" Value="1"></asp:ListItem>
                        <asp:ListItem Text="2" Value="2"></asp:ListItem>
                        <asp:ListItem Text="3" Value="3"></asp:ListItem>
                        <asp:ListItem Text="4" Value="4"></asp:ListItem>
                        <asp:ListItem Text="5" Value="5"></asp:ListItem>
                        <asp:ListItem Text="6" Value="6"></asp:ListItem>
                        <asp:ListItem Text="7" Value="7"></asp:ListItem>
                        <asp:ListItem Text="8" Value="8"></asp:ListItem>
                        <asp:ListItem Text="9" Value="9"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td>12.</td>
                <td colspan="2">Color:</td>
            </tr>
            <tr>
                <td></td>
                <td>Slat:</td>
                <td>
                    <dx:ASPxComboBox ID="cbColorSlat" runat="server"
                        ShowImageInEditBox="True">
                        <Items>
                            <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                            <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                            <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                            <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                        </Items>
                        <ItemImage Height="23px" Width="23px" />
                    </dx:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Box:</td>
                <td>
                    <dx:ASPxComboBox ID="cbColorBox" runat="server"
                        ShowImageInEditBox="True">
                        <Items>
                            <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                            <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                            <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                            <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                        </Items>
                        <ItemImage Height="23px" Width="23px" />
                    </dx:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Guide:</td>
                <td>
                    <dx:ASPxComboBox ID="cbColorGuide" runat="server"
                        ShowImageInEditBox="True">
                        <Items>
                            <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                            <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                            <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                            <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                        </Items>
                        <ItemImage Height="23px" Width="23px" />
                    </dx:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td></td>
                <td>Bottom bar:</td>
                <td>
                    <dx:ASPxComboBox ID="cbColorBottomBar" runat="server"
                        ShowImageInEditBox="True">
                        <Items>
                            <dx:ListEditItem ImageUrl="~/Images/white.jpg" Text="white" Value="white" Selected="true"/>
                            <dx:ListEditItem ImageUrl="~/Images/silver.jpg" Text="silver" Value="silver" />
                            <dx:ListEditItem ImageUrl="~/Images/beige.jpg" Text="beige" Value="beige" />
                            <dx:ListEditItem ImageUrl="~/Images/brown.jpg" Text="brown" Value="brown" />
                        </Items>
                        <ItemImage Height="24px" Width="23px" />
                    </dx:ASPxComboBox>
                </td>
            </tr>
            <tr>
                <td>13.</td>
                <td colspan="2">Guide rail drilling:</td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2"><asp:Image ID="imgGuideRailDrilling" runat="server" ImageUrl="~/Images/Drilling.jpg" Width="230"/></td>
            </tr>
            <tr>
                <td></td>
                <td colspan="2">
                    <asp:RadioButtonList ID="rblGuideRailDrilling" runat="server" RepeatDirection="Horizontal" RepeatLayout="Table">
                        <asp:ListItem Text="No" Value="No"></asp:ListItem>
                        <asp:ListItem Text="Recessed" Value="Recessed"></asp:ListItem>
                        <asp:ListItem Text="Surface" Value="Surface"></asp:ListItem>
                    </asp:RadioButtonList>
                </td>
            </tr>
        </table>--%>
    </div>
        
    </form>
</body>
</html>
