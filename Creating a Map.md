#-Creating a map in QGIS

## Installing Open Layers
In order to create add a map to QGIS, we need the Open Layers Plugin.
This can be done in QGIS.  **Plugins -> Manage and Install Plugins**
In the window that comes up, search for and select Open Layers and install the plugin

## Importing a CSV File
Before importing a CSV file, make sure it has a header row with column names.  The program reads the first line as titles, even if the first row is actually data / blank.  Do this in Excel.
**Layer -> Add Layer -> Add Delimited Text Layer**
Select the CSV you want to upload under ‘File Name’.  Select ‘System’ in the Encoding pulldown menu.  Then, select your x and y fields and hit ok.  If your coordinate is read in incorrectly you can right click the created layer, and under **Properties -> General -> Coordinate reference system** select the right system.

## Editing the Layer
Right click the layer under the Layers Panel, and select Properties.  This will pull up a window where we can edit the layer.

### Changing the marker type
Under the **Style** tab, you can select a symbol type to use, change the color of the marker, and the size of the marker.  If you wish to remove the outline on the marker, double click **Simple Marker** at the top of the window.  From here, you can remove the outlines of the markers.

### Color Schemes
In the **Properties** window, we can also display data using a color scheme.  At the top pulldown menu, select **Graduated**.  This allows us to color our data points based on a value we select.  To the right of the the **Color ramp** is an edit button.  Select that, and in the next windo, there is a pulldown menu tabeled **Type**.  In that menu, select **Discrete**, which allows you to to choose colors for a range.  To change the color of a block, click on teh pentagon on the left end of the block, and pick a color.  For consistency, it is easiest to create your own color palette to work with which is covered below.

####Creating a Color Pallete
In any Color selection window, click on the tab with a grid of colors.  Here, you can see a pulldown menu with elipses.  Use that, and select New Pallete.  Now, when you select a  color using the color wheel, you can go back to the grid tab, and select the plus sign to add the color to your pallete.  Add all the colors you would like, then once you are done, select **Export Colors** under the same pulldown menu with the elipses.  This will allow you to save your color pallete for future use.

### Color Coding
Now that you have a color scheme created, in the **Properties** window, select which column you want to base the colors on in the column pulldown menu.  Then, below the white box, click on **Classify**.  To the right of that, you can change the number of categories.  The bins can be manually changed by double clicking on the bin, which allows you to change the value range of each bin.  However, note that the program will change the range adjacent to what you change to help you prevent overlap.  I have found that when dealing with negative values, You have to enter the ranges with smaller amplitudes at the bottom of the list, and ranges with higher amplitudes at the top of the list while you manually create your ranges.  If your colors do not appear right, right click on the catgegory, and you can change the color of that bin (this is where having a pallete can come in handy since it is hard to recreate the same color every time).  Once you are done, double check your legend values (which are to the right of your value ranges).  These can be changed by double clicking on them and typing in a new legend entry.  Finally, you can drag bins around after typing them in to put them in a desired order to appear on your legend.

## Adding a map
To add a map, we will use the Open Layers plugin.  The installation is detailed below.  Once Open Layers is installed, select **Web -> Open Layers plugin -> OpenStreetMap -> OpenStreetMap**.  This will add a layer with a map with roads, parks, and water.  If you want to tone down the map for visibility, right click the Open Layers layer, and select **Properties**.  In the **Color Rendering** section, change the saturation to a negative value to make the map more muted.

## Making a map with a legend
At the top left of the QGIS window, there is a symbol with a white page and a yellow box in the corner.  Select that, and make a print composer.  **Layout -> Add Map** and drage a map across your white space.  The map you created in QGIS should appear.  If you want to zoom in or out of the map, **Layout -> Move Item** and select the map window, and you can zoom in the **Item Properties** tab on the right.  Increasing the **Scale** value will zoom out while decreasing it will zoom in.  If you want to shift what area the map carries, **Layout -> Move Content**.  You can then drag the map around to pan in on the area you desire.  Add a legend using **Layout -> Add Legend** and drag a box where you want the legend to go.  You can move the legend while under **Layer -> Move Item**.  You will notice the legend matches the names of your layers, and the order they appear in in your **Layers Panel** in the main QGIS window.  Drag those around to adjust their order to your liking.
