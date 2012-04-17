<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Tariffs.aspx.cs" Inherits="BillingSystem.Tariffs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<TABLE bgcolor="#FFFFFF" border=1 bordercolorlight="#D5D5E3" bordercolordark="#666699">
<TR valign=top>
<TD colspan=6 bgcolor="#FFFF99" valign=middle><div class="wpmd">
<div align=center><font color="#66669A" face="@Arial Unicode MS">Тарифы действующие на территории города Лудза в кабельной сети</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD rowspan=2 width=115 valign=middle><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">Тариф</font></div>
</div>
</TD>
<TD colspan=2><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">Латвийский трафик Мбит/сек</font></div>
</div>
</TD>
<TD colspan=2><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">Зарубужный трафик Мбит/сек</font></div>
</div>
</TD>
<TD rowspan=2 width=68 valign=middle><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">Оплата</font></div>
<div align=center><font color="#666699" face="@Arial Unicode MS">за месяц</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=81><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">загрузка до:</font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">передача до:</font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">загрузка до:</font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">передача до:</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115 height=18><div class="wpmd">
<div align=center><font color="#FF0000" face="@Arial Unicode MS">Супер</font></div>
</div>
</TD>
<TD width=81 height=18><div class="wpmd">
<div align=center><font color="#FF0000" face="@Arial Unicode MS"><B>100</B></font></div>
</div>
</TD>
<TD width=83 height=18><div class="wpmd">
<div align=center><font color="#FF0000" face="@Arial Unicode MS"><B>100</B></font></div>
</div>
</TD>
<TD width=83 height=18><div class="wpmd">
<div align=center><font color="#FF0000" face="@Arial Unicode MS"><B>50</B></font></div>
</div>
</TD>
<TD width=82 height=18><div class="wpmd">
<div align=center><font color="#FF0000" face="@Arial Unicode MS"><B>50</B></font></div>
</div>
</TD>
<TD width=68 height=18><div class="wpmd">
<div align=center><font color="#FF0000" face="@Arial Unicode MS"><B>13.99 Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS">Профессиональный</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>50</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>50</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10.00 Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS">*Домашний +</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>5</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>5</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>6.99 Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115 height=9><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS">*Экономный</font></div>
</div>
</TD>
<TD width=81 height=9><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=83 height=9><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=83 height=9><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>2</B></font></div>
</div>
</TD>
<TD width=82 height=9><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>2</B></font></div>
</div>
</TD>
<TD width=68 height=9><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>3.99 Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD><div class="wpmd">
<div align=center><font color="#800000" face="@Arial Unicode MS">*Стартовый</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#800000" face="@Arial Unicode MS"><B>5</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#800000" face="@Arial Unicode MS"><B>5</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#800000" face="@Arial Unicode MS"><B>1</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#800000" face="@Arial Unicode MS"><B>1</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#800000" face="@Arial Unicode MS"><B>2.99 Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD colspan=6><div class="wpmd">
<div align=center><font color="#666699" face="@Arial Unicode MS">Для инвалидов 1 группы</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS">Профессиональный</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>50</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>50</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>7.50Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS">*Домашний +</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>5</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>5</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#FF6600" face="@Arial Unicode MS"><B>5.50Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS">*Экономный</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>2</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>2</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#0000FF" face="@Arial Unicode MS"><B>2.99Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD colspan=6 bgcolor="#FFFF99"><div class="wpmd">
<div align=center><font color="#66669A" face="@Arial Unicode MS">Тарифы действующие в посёлке Мартиши, Иснаудская волость.</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS">Профессиональный</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>30</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10.00 Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD colspan=6 bgcolor="#FFFF99"><div class="wpmd">
<div align=center><font color="#66669A" face="@Arial Unicode MS">Тарифы действующие в посёлке Луцмуйжа, Звиргзденская волость.</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS">Профессиональный</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>30</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10.00 Ls</B></font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD colspan=6 bgcolor="#FFFF99"><div class="wpmd">
<div align=center><font color="#66669A" face="@Arial Unicode MS">Тарифы действующие в городе по адресам: Латгалес 236,238a,240,242,242а,242б,242ц.</font></div>
</div>
</TD>
</TR>
<TR valign=top>
<TD width=115><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS">Профессиональный</font></div>
</div>
</TD>
<TD width=81><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>30</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=83><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>25</B></font></div>
</div>
</TD>
<TD width=82><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10</B></font></div>
</div>
</TD>
<TD width=68><div class="wpmd">
<div align=center><font color="#008000" face="@Arial Unicode MS"><B>10.00 Ls</B></font></div>
</div>
</TD>
</TR>
</TABLE>

<br />
<div><font face="@Arial Unicode MS"><B>1.</B></font><font face="@Arial Unicode MS"> Тарифы помеченные этим значком&nbsp; </font><font face="@Arial Unicode MS" class="ws11"><B>*</B></font><font face="@Arial Unicode MS">&nbsp; ,в акциях не участвуют</font></div>
<div><font face="@Arial Unicode MS"><B>2.</B></font><font face="@Arial Unicode MS"> Дополнительный бонус для пользователей тарифов:</font></div>
<div><font face="@Arial Unicode MS"><B>"Супер"</B></font><font face="@Arial Unicode MS">, </font><font face="@Arial Unicode MS"><B>"Профессиональный"</B></font><font face="@Arial Unicode MS"> и </font><font face="@Arial Unicode MS"><B>"Домашний +"</B></font><font face="@Arial Unicode MS">.</font></div>
<div><font face="@Arial Unicode MS">Ночной тариф, в период с 0:00 до 9:00 </font></div>
<div><font face="@Arial Unicode MS">снимаются все ограничения </font></div>
<div><font face="@Arial Unicode MS">по входящему и исходящему трафику.</font></div>
<div><font face="@Arial Unicode MS"><B>3.</B></font><font face="@Arial Unicode MS"> На тарифах </font><font face="@Arial Unicode MS"><B>"Супер"</B></font><font face="@Arial Unicode MS"> и </font><font face="@Arial Unicode MS"><B>"Профессиональный"</B></font></div>
<div><font face="@Arial Unicode MS">действует программа скидок</font></div>


</asp:Content>
