module FourPortROM (
    input clk,
    input [2:0] addr1, //3 bit address beacuse of 8 ROM locations
    input [2:0] addr2,
    input [2:0] addr3,
    input [2:0] addr4,
    output reg [7:0] data1, //8 bit data length
    output reg [7:0] data2,
    output reg [7:0] data3,
    output reg [7:0] data4
);

    // ROM memory array
    reg [7:0] rom [0:7];

    // Initialize Random ROM contents
    initial 
    begin
        rom[0] = 8'b10100001;  
        rom[1] = 8'b10110010;  
        rom[2] = 8'b11000011;  
        rom[3] = 8'b11010100; 
        rom[4] = 8'b00100001;  
        rom[5] = 8'b00110010;  
        rom[6] = 8'b01000011;  
        rom[7] = 8'b01010100;   
    end
    // Reading data from ROM
    always @(posedge clk) 
    begin
        data1 <= rom[addr1];
        data2 <= rom[addr2];
        data3 <= rom[addr3];
        data4 <= rom[addr4];
    end
endmodule