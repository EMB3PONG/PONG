<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="spartan3e" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="D_i" />
        <signal name="clk_i" />
        <signal name="Q_o" />
        <port polarity="Input" name="D_i" />
        <port polarity="Input" name="clk_i" />
        <port polarity="Output" name="Q_o" />
        <blockdef name="srl16">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="320" y1="-448" y2="-448" x1="384" />
            <line x2="64" y1="-512" y2="-512" x1="0" />
            <line x2="64" y1="-320" y2="-320" x1="0" />
            <line x2="64" y1="-256" y2="-256" x1="0" />
            <line x2="64" y1="-192" y2="-192" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="64" y1="-384" y2="-384" x1="0" />
            <line x2="80" y1="-368" y2="-384" x1="64" />
            <line x2="64" y1="-384" y2="-400" x1="80" />
            <rect width="256" x="64" y="-576" height="512" />
        </blockdef>
        <block symbolname="srl16" name="XLXI_4">
            <blockpin name="A0" />
            <blockpin name="A1" />
            <blockpin name="A2" />
            <blockpin name="A3" />
            <blockpin signalname="clk_i" name="CLK" />
            <blockpin signalname="D_i" name="D" />
            <blockpin signalname="Q_o" name="Q" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="400" y="752" name="XLXI_4" orien="R0" />
        <branch name="D_i">
            <wire x2="400" y1="240" y2="240" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="240" name="D_i" orien="R180" />
        <branch name="clk_i">
            <wire x2="400" y1="368" y2="368" x1="368" />
        </branch>
        <iomarker fontsize="28" x="368" y="368" name="clk_i" orien="R180" />
        <branch name="Q_o">
            <wire x2="816" y1="304" y2="304" x1="784" />
        </branch>
        <iomarker fontsize="28" x="816" y="304" name="Q_o" orien="R0" />
    </sheet>
</drawing>