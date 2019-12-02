size(1400, 800);
background(0,0,0);
Table myTable = loadTable("cities.tsv", "header");

for (int i = 0; i < myTable.getRowCount(); i++) { 
  TableRow line =myTable.getRow(i);

  rect(300,60*i+160, sqrt(line.getInt("area")*10), 30); 
  rect(700,60*i+160, line.getInt("population")/60000, 10);
  
  textSize(14);
  text(line.getString("area"),300, 60*i+160); 
  text(line.getString("population"),700, 60*i+160);

  
  textSize(14);
  text(line.getString("city"), 100, 60*i+180);
  
  textSize(28);
  text(" Visualization of the Populations of the 10 Largest Cities in the World", 230, 60); 
  
  textSize(16);
  text("Cities", 100,130);
  
  textSize(16);
  text("Area / km2", 300,130);
  
  textSize(16);
  text("Population", 700,130);
  
  textSize(12);
  text("Design by Sharon Xia", 1200,750);
  
}
