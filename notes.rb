<div class = "container">
	<div class = "row">
		<div class = "col-xs-12 col-s-12 col-md-12 col-lg-12">
			<h1 class= "result title">Your Preditiction For The Year Ahead.</h1>			
		</div>
	</div>

<div class ="row">
	<div class ="nudge">
		<div class = "col-xs-12 col-s-12 col-md-12 col-lg-12">
			<center>
		<% if @magic_number.include?(/4||5/) %>
			<h1> This Year Is A Year Of Reflection For You.</h1>
			<p> The Great Oracle predicts that this year is a good year to take stock of all things in your life and perhaps also a good year to consider redirecting your energies. Do not make any sudden moves in the coming year, change jobs, leave lovers or make any big ticket purchases without much thought to the outcome.</p> 
		<% elsif  @magic_number.include?(/6||7||8/)%> 
			<h1> Good Things Are To Come For You This Year.</h1>
			<p> This last year has given you much to think about, and The Great Oracle can see that you have retained a sense of buoyancy throughout.  The Great Oracle approves and bestows to you good fortune coming your way all year long.</p>
		<% elsif @magic_number.include?(/9||10||11/) %>
			<h1> This Year Will Be Calm.</h1>
			<p> The Great Oracle has predicted that this year will be a relaxing year for you.  No great upheavals should come your way.  However, The Great Oracle cautions you to not rest on your laurels in the upcoming year, as the tides could turn in either direction.</p>
		<% elsif @magic_number.include?(/12||13||14/) %>
			<h1> This Year Will Be Magical. </h1>
			<p> The Great Oracle predicts that this year everything will be coming up roses.  Good fortune is coming to you all year long in the form of good friends, family relations, fulfilling work and a rich inner life.  Congratulations!</p>
		<% else @magic_number.include?(/15||16/) %>
			<h1> This Year Will Be The Best Year Yet. </h1>
			<p> The Great Oracle predicts that wonderful fortunes are coming your way this year.  Everything you do will be rewarding and fruitful.  Everyone you meet will bask in your radiant glow.  Enjoy this year! </p>
		<% end %>
	</center>
		</div>
	</div>
</div>

</div>

