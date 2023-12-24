module top(input clki, output reg rgb0, output reg rgb1, output reg rgb2);
    reg [0:0] xmas = 0;
    reg [23:0] count = 0;
    always @(posedge clki) begin
        if (count == 24'd12500000)
            count <= 0;
        else
            count <= count + 1;
        if (count == 0)
            if (xmas == 0)
                rgb0 <= 0;
            else
                rgb0 <= 1;
            
            rgb1 <= ~rgb0;
            xmas <= ~xmas;
            
    end

endmodule
