(* ::Package:: *)

(* ::Text:: *)
(*This notebook defines color functions that are perceptually linear. For more discussion, see:*)
(*http://mathematica.stackexchange.com/questions/64513/is-there-an-easy-way-to-use-matteo-niccolis-perceptual-color-maps-for-2d-plots*)
(*https://mycarta.wordpress.com/2012/05/29/the-rainbow-is-dead-long-live-the-rainbow-series-outline/*)
(*None of this work is mine -- I have just compiled it from the two above sources.*)


(* ::Input:: *)
(*SetDirectory[NotebookDirectory[]]*)


(* ::Input:: *)
(*ParulaCM=Module[{colorlist},colorlist=Get["Colormaps/parula.txt"];*)
(*Evaluate[Blend[RGBColor@@@colorlist,#]&]];*)
(*Cube1CM=Module[{colorlist},colorlist=Get["Colormaps/cube1_0-1.txt"];*)
(*Evaluate[Blend[RGBColor@@@colorlist,#]&]];*)
(*CubeYFCM=Module[{colorlist},colorlist=Get["Colormaps/cubeyf_0-1.txt"];*)
(*Evaluate[Blend[RGBColor@@@colorlist,#]&]];*)
(*LinearLCM=Module[{colorlist},colorlist=Get["Colormaps/linear_l_0-1.txt"];*)
(*Evaluate[Blend[RGBColor@@@colorlist,#]&]];*)
(*JetCM=Module[{colorlist},colorlist=Get["Colormaps/jet.txt"];*)
(*Evaluate[Blend[RGBColor@@@colorlist,#]&]];*)


(* ::Input:: *)
(*ColorMapsExample[]:=TableForm[{{"JetCM (bad)","ParulaCM","Cube1CM","CubeYFCM","LinearLCM"},BarLegend[{#,{0,1}}]&/@{JetCM,ParulaCM,Cube1CM,CubeYFCM,LinearLCM},DensityPlot[Cos[x] Sin[y],{x,-10,10},{y,-10,10},PlotRange->All,ColorFunction->#,PlotPoints->75]&/@{JetCM,ParulaCM,Cube1CM,CubeYFCM,LinearLCM}}]*)


(* ::Input:: *)
(*Print["\!\(\**)
(*StyleBox[\"ColorMaps\",\nFontVariations->{\"Underline\"->True}]\)\!\(\**)
(*StyleBox[\" \",\nFontVariations->{\"Underline\"->True}]\)v1*)
(*This package defines four new perceptually linear color functions for use in mathematica: ParulaCM, Cube1CM, CubeYFCM, and LinearLCM.*)
(*I think that Cube1CM and LinearLCM are designed to work on positive and negative data. CubeYFCM is designed to work on strictly positive data.*)
(*Run function ColorMapsExample[] for an example."];*)
