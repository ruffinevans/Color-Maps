(* ::Package:: *)

(* ::Text:: *)
(*This notebook defines color functions that are perceptually linear. For more discussion, see:*)
(*http://mathematica.stackexchange.com/questions/64513/is-there-an-easy-way-to-use-matteo-niccolis-perceptual-color-maps-for-2d-plots*)
(*https://mycarta.wordpress.com/2012/05/29/the-rainbow-is-dead-long-live-the-rainbow-series-outline/*)
(*None of this work is mine -- I have just compiled it from the two above sources and added a few functions to make it easy to use in Mathematica. *)


(* ::Text:: *)
(*Use current version of colormaps:*)


webdir="https://raw.githubusercontent.com/ruffinevans/Color-Maps/master/Colormaps/";


(* ::Text:: *)
(*Code defining color functions*)


ParulaCM=Module[{colorlist},colorlist=Get[webdir<>"parula.txt"];
Evaluate[Blend[RGBColor@@@colorlist,#]&]];
Cube1CM=Module[{colorlist},colorlist=Get[webdir<>"cube1_0-1.txt"];
Evaluate[Blend[RGBColor@@@colorlist,#]&]];
CubeYFCM=Module[{colorlist},colorlist=Get[webdir<>"cubeyf_0-1.txt"];
Evaluate[Blend[RGBColor@@@colorlist,#]&]];
LinearLCM=Module[{colorlist},colorlist=Get[webdir<>"linear_l_0-1.txt"];
Evaluate[Blend[RGBColor@@@colorlist,#]&]];
JetCM=Module[{colorlist},colorlist=Get[webdir<>"jet.txt"];
Evaluate[Blend[RGBColor@@@colorlist,#]&]];


(* ::Text:: *)
(*Generates exmple file*)


ColorMapsExample[]:=TableForm[{{"JetCM (bad)","ParulaCM","Cube1CM","CubeYFCM","LinearLCM"},BarLegend[{#,{0,1}}]&/@{JetCM,ParulaCM,Cube1CM,CubeYFCM,LinearLCM},DensityPlot[Cos[x] Sin[y],{x,-10,10},{y,-10,10},PlotRange->All,ColorFunction->#,PlotPoints->75]&/@{JetCM,ParulaCM,Cube1CM,CubeYFCM,LinearLCM}}]


(* ::Text:: *)
(*Rescales color maps for convenience*)


ScaleCF[CF_,data_]:=Module[{mi=Min@data,ma=Max@data},CF[(#-mi)/ma]&]
ScaleCF::usage="ScaleCF[CF,data] which generates a new color function based on the min and max of the (1D) data. Alternatively a range {min, max} can be explicitly passed instead of data.";


(* ::Text:: *)
(*Readme*)


Print["\!\(\*
StyleBox[\"ColorMaps\",\nFontVariations->{\"Underline\"->True}]\)\!\(\*
StyleBox[\" \",\nFontVariations->{\"Underline\"->True}]\)
This package defines four new perceptually linear color functions for use in mathematica: ParulaCM, Cube1CM, CubeYFCM, and LinearLCM.
I think that Cube1CM and LinearLCM are designed to work on positive and negative data. CubeYFCM is designed to work on strictly positive data.
All data is expected to be scaled from 0 to 1 before plotting. Instead of rescaling the data, it is useful to rescale the color function istead based on the extrema of the data. This can be done with the function ScaleCF[CF,data] which generates a new color function based on the min and max of the (1D) data. Alternatively a range {min, max} can be explicitly passed instead of data.
You should also pass ColorFunctionScaling->False as a flag to prevent Mathematica from \"helpfully\" rescaling the data.
Run function ColorMapsExample[] for an example."];
