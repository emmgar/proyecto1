
<%@ page contentType="text/html;charset=UTF-8" %>

<!doctype html>
<html class="no-js" lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>UNAM F.Ciencias | Diseño de Interfaces [2014-2]</title>
    
    <link  href="${resource(dir: 'css', file: 'foundation.css')}" rel="stylesheet" type="text/css" />
     <link  href="${resource(dir: 'css', file: 'style.css')}" rel="stylesheet" type="text/css" />

    
    <script src="${resource(dir: 'js', file: 'modernizr.js')}" type="text/javascript"></script>
      

    <style>
        #draggable, #draggable2 { width: 100px; height: 100px; padding: 0.5em; float: left; margin: 0 10px 10px 0; }
    </style>
</head>
<body>

<div class="row">
    <div class="large-12 columns text-center">
        <h1>Brookline Adult & Community Education</h1>
        <h2>English As a Second Language Placement Test</h2>
    </div>
</div>

<div class="row">

    <div class="alert-box">
        <h5> Please read the story and SELECT the correct answer.</h5>
    </div>

    <div id="cloze-text" class="large-8 medium-8 columns">
        <p>
            My name is Lori. I work during the day and go
            &nbsp;&nbsp;
            <select name="q21" id="question21" class="small-2">
                <option value="x" selected>21</option>
                <option value="a">in</option>
                <option value="b">at</option>
                <option value="c">to</option>
            </select>&nbsp;&nbsp;
            school at night. I
            &nbsp;&nbsp;
            <select name="q22" id="question22" class="small-2">
                <option value="x" selected>22</option>
                <option value="a">work</option>
                <option value="b">works</option>
                <option value="c">working</option>
            </select>&nbsp;&nbsp;
            as a manager.
            &nbsp;&nbsp;
            <select name="q23" id="question23" class="small-2">
                <option value="x" selected>23</option>
                <option value="a">Her</option>
                <option value="b">My</option>
                <option value="c">His</option>
            </select>&nbsp;&nbsp;
            boss is very kind. Everybody likes
            &nbsp;&nbsp;
            <select name="q24" id="question24" class="small-2">
                <option value="x" selected>24</option>
                <option value="a">her</option>
                <option value="b">them</option>
                <option value="c">his</option>
            </select>&nbsp;&nbsp;
            very much. I study nursing at school. I like
            &nbsp;&nbsp;
            <select name="q25" id="question25" class="small-2">
                <option value="x" selected>25</option>
                <option value="a">go</option>
                <option value="b">to go</option>
                <option value="c">to going</option>
            </select>&nbsp;&nbsp;
            to school early so I can study by
            &nbsp;&nbsp;
            <select name="q26" id="question26" class="small-2">
                <option value="x" selected>26</option>
                <option value="a">herself</option>
                <option value="b">himself</option>
                <option value="c">myself</option>
            </select>&nbsp;&nbsp;
            before class. The class is difficult, so I
            &nbsp;&nbsp;
            <select name="q27" id="question27" class="small-2">
                <option value="x" selected>27</option>
                <option value="a">must</option>
                <option value="b">may</option>
                <option value="c">can</option>
            </select>&nbsp;&nbsp;
            study hard if I
            &nbsp;&nbsp;
            <select name="q28" id="question28" class="small-2">
                <option value="x" selected>28</option>
                <option value="a">will</option>
                <option value="b">wanted</option>
                <option value="c">want</option>
            </select>&nbsp;&nbsp;
            to do well.
        </p>

        <br/>

        <p>
            After class,
            &nbsp;&nbsp;
            <select name="q29" id="question29" class="small-2">
                <option value="x" selected>29</option>
                <option value="a">any</option>
                <option value="b">the</option>
                <option value="c">my</option>
            </select>&nbsp;&nbsp;
            friends and I usually go out for something to eat. Last night we
            &nbsp;&nbsp;
            <select name="q30" id="question30" class="small-2">
                <option value="x" selected>30</option>
                <option value="a">went</option>
                <option value="b">go</option>
                <option value="c">gone</option>
            </select>&nbsp;&nbsp;
            to a restaurant
            &nbsp;&nbsp;
            <select name="q31" id="question31" class="small-2">
                <option value="x" selected>31</option>
                <option value="a">across to</option>
                <option value="b">across</option>
                <option value="c">across from</option>
            </select>&nbsp;&nbsp;
            our school. We like to go there because it's
            &nbsp;&nbsp;
            <select name="q32" id="question32" class="small-2">
                <option value="x" selected>32</option>
                <option value="a">the cheapest</option>
                <option value="b">too cheap</option>
                <option value="c">cheaper</option>
            </select>&nbsp;&nbsp;
            place in the neighborhood and the food
            &nbsp;&nbsp;
            <select name="q33" id="question33" class="small-2">
                <option value="x" selected>33</option>
                <option value="a">was</option>
                <option value="b">good</option>
                <option value="c">is</option>
            </select>&nbsp;&nbsp;
            very good. I usually order
            &nbsp;&nbsp;
            <select name="q34" id="question34" class="small-2">
                <option value="x" selected>34</option>
                <option value="a">cup of coffee</option>
                <option value="b">a cup coffee</option>
                <option value="c">a cup of coffee</option>
            </select>&nbsp;&nbsp;
            and a hamburger. This restaurant
            &nbsp;&nbsp;
            <select name="q35" id="question35" class="small-2">
                <option value="x" selected>35</option>
                <option value="a">have</option>
                <option value="b">has</option>
                <option value="c">had</option>
            </select>&nbsp;&nbsp;
            the best hamburgers in town!
        </p>

        <br/>

        <p>
            Steve and Jean recently moved to an apartment in the city. They have lived in their new apartment
            &nbsp;&nbsp;
            <select name="q36" id="question36" class="small-2">
                <option value="x" selected>36</option>
                <option value="a">for</option>
                <option value="b">since</option>
                <option value="c">during</option>
            </select>&nbsp;&nbsp;
            two weeks. Before that they
            &nbsp;&nbsp;
            <select name="q37" id="question37" class="small-2">
                <option value="x" selected>37</option>
                <option value="a">had</option>
                <option value="b">have</option>
                <option value="c">were</option>
            </select>&nbsp;&nbsp;
            lived in a house in the country. Since they moved into their new apartment, they
            &nbsp;&nbsp;
            <select name="q38" id="question38" class="small-2">
                <option value="x" selected>38</option>
                <option value="a">have been</option>
                <option value="b">are</option>
                <option value="c">were</option>
            </select>&nbsp;&nbsp;
            very busy. Although they enjoy
            &nbsp;&nbsp;
            <select name="q39" id="question39" class="small-2">
                <option value="x" selected>39</option>
                <option value="a">live</option>
                <option value="b">to live</option>
                <option value="c">living</option>
            </select>&nbsp;&nbsp;
            in the city, they sometimes wish they
            &nbsp;&nbsp;
            <select name="q40" id="question40" class="small-2">
                <option value="x" selected>40</option>
                <option value="a">stay</option>
                <option value="b">stayed</option>
                <option value="c">had stayed</option>
            </select>&nbsp;&nbsp;
            in the country. Yesterday Jean received a birthday card. It was
            &nbsp;&nbsp;
            <select name="q41" id="question41" class="small-2">
                <option value="x" selected>41</option>
                <option value="a">sent</option>
                <option value="b">sending</option>
                <option value="c">send</option>
            </select>&nbsp;&nbsp;
            by her friends Linda and Paul.
        </p>

        <br/>

        <p>
            Today is her birthday and she is sad. If they were still living in the country, they
            &nbsp;&nbsp;
            <select name="q42" id="question42" class="small-2">
                <option value="x" selected>42</option>
                <option value="a">have</option>
                <option value="b">will have</option>
                <option value="c">would have</option>
            </select>&nbsp;&nbsp;
            a party. Jean told Steve that she
            &nbsp;&nbsp;
            <select name="q43" id="question43" class="small-2">
                <option value="x" selected>43</option>
                <option value="a">will miss</option>
                <option value="b">missed</option>
                <option value="c">miss</option>
            </select>&nbsp;&nbsp;
            their old friends. Steve said he would
            &nbsp;&nbsp;
            <select name="q44" id="question44" class="small-2">
                <option value="x" selected>44</option>
                <option value="a">call them up.</option>
                <option value="b">call up them.</option>
                <option value="c">them call up.</option>
            </select>&nbsp;&nbsp;
            "I hope they
            &nbsp;&nbsp;
            <select name="q45" id="question45" class="small-2">
                <option value="x" selected>45</option>
                <option value="a">are</option>
                <option value="b">be</option>
                <option value="c">were</option>
            </select>&nbsp;&nbsp;
            home", said Jean as Steve dialed the number. "No one answered", Steve said. "They must
            &nbsp;&nbsp;
            <select name="q46" id="question46" class="small-2">
                <option value="x" selected>46</option>
                <option value="a">have gone</option>
                <option value="b">be go</option>
                <option value="c">gone</option>
            </select>&nbsp;&nbsp;
            out". Steve called another friend, but he wasn't at home
            &nbsp;&nbsp;
            <select name="q47" id="question47" class="small-2">
                <option value="x" selected>47</option>
                <option value="a">neither.</option>
                <option value="b">too.</option>
                <option value="c">either.</option>
            </select>&nbsp;&nbsp;
            "Keep on
            &nbsp;&nbsp;
            <select name="q48" id="question48" class="small-2">
                <option value="x" selected>48</option>
                <option value="a">to try,</option>
                <option value="b">trying,</option>
                <option value="c">try,</option>
            </select>&nbsp;&nbsp;
            Jean said. Steve called all of their friends, but no one was at home. "I don't know where
            &nbsp;&nbsp;
            <select name="q49" id="question49" class="small-2">
                <option value="x" selected>49</option>
                <option value="a">they are,</option>
                <option value="b">are they,</option>
                <option value="c">they be,</option>
            </select>&nbsp;&nbsp;
            said Steve. Suddenly they heard a knock. Jean opened the door and saw Paul, Linda, and their other friends.
            "We
            &nbsp;&nbsp;
            <select name="q50" id="question50" class="small-2">
                <option value="x" selected>50</option>
                <option value="a">could</option>
                <option value="b">can</option>
                <option value="c">must</option>
            </select>&nbsp;&nbsp;
            have called, but we wanted to surprise you", said Linda. "Happy Birthday!"
        </p>
    </div>
</div>

<div class="row">
    <button id="finish" class="radius">Finish</button>
</div>

<script src="${resource(dir: 'js', file: 'jquery-1.10.2.js')}" type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'foundation.min.js')}" type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'jquery-ui.js')}" type="text/javascript"></script>

<script src="${resource(dir: 'js', file: 'solutions.js')}" type="text/javascript"></script>

<script>
    $(document).foundation();

        var Score = 0;
        var Evaluation = "No evaluation";

        if (Score>=0 && Score<20){
            Evaluation = "Beginning English";
        }
        else if (Score>=20 && Score<30){
            Evaluation = "Intermediate English";
        }
        else if (Score>=30 && Score<43){
            Evaluation = "High Intermediate English";
        }
        else if (Score>=43 && Score<=50){
            Evaluation = "Advanced English";
        }
        else{
            Evaluation = "ERROR: Cannot stablish evaluation";
        }

    $("#finish").click(function(){
        //TODO: Calculate Score
        Score = 40; // SPDG
        alert("Your English level is: " + Evaluation);
    });

    $(function() {
        $( ".ui-widget-content" ).draggable({
            revert: false,
            snap:   "select"
        });

        $("select.small-2").droppable({
            accept: ".ui-widget-content",
            drop: function(event, ui){
                var answr = ui.draggable.children().first().html();
                var quest = $(this).children().first().html();

                if(Answers[quest] == answr){
                    Score++;
                    console.log("Correcto!")
                }
                else{
                    console.log("Incorrecto!!")
                }
                console.log("PREGUNTA: " + quest);
                console.log("RESPUESTA: " + answr);

                console.log("SCORE: " + Score);
            }
        });
    });
</script>
</body>
</html>

