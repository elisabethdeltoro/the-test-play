<template>
  <div>


    <!-- This is the intro disclaimer page -->
    <div class="intro" v-if="disclaimer">
      <h1>The Test</h1>
      <p>
        Welcome. The Test serves as a data
        collection tool for graduate research through the University of Glasgow.
        If you choose to proceed, your participation in the study would consist
        of watching a 40 minute piece of interactive theatre on your device,
        and voting on several plot points along the way. Your votes will be
        anonymously collected as research data. This data will be analysed
        comparing two different experiences of the same piece of theatre.
      </p>

      <p>
       This experience is best suited to being watched on a computer. Please do <strong>not</strong> refresh or press the "back" button at any point during the show,
         as it will interfere with the collection of data and <em>you may be unable to return to where you left off.</em> 
      </p>
      <br />
      <p>
        Take a moment to read the
        <a
          target="_blank"
          href="https://docs.google.com/document/d/1dgmYaCgC6GZ_boEQhekzlAgLx3tdB-EE9ZLqzZb5nb0/edit"
          >Participant Information Sheet</a
        >
        and
        <a
          target="_blank"
          href="https://docs.google.com/document/d/1SfzOrUtSTSGDP73zWVMVdqoduUbPFc6kEOcck54u3No/edit"
          >Consent Form</a
        >
        and agree to their terms before you proceed. Because this is a research
        endeavour, you may <strong>not</strong> watch the show multiple times to select other
        endings. All choices are final. Please watch the show alone.</p> 
        
      <br />
      <p>Ready to watch?</p>
      <legend>
        By clicking confirm, you are indicating:
      </legend>
      <input id="plain-lang" type="checkbox" value="plain-lang" required />
      <label for="plain-lang"
        >I have read and agree to the information in the participant information
        sheet*</label
      >
      <br />
      <input id="consent" type="checkbox" value="consent" required />
      <label for="consent"
        >I have read and agree to the terms outlined in the consent form*</label
      >
      <br />
      <div id="fake-button" @click="submitDisclaimer()">CONFIRM</div>

    </div>

    <!-- This is the after show page -->
    <div class="afterShow" v-if="afterShow">
      <h1>Thank you for watching The Test.</h1>
      <br>
      <p>
        If you feel so inclined, please share it with people you think might be
        interested. As this is part of my dissertation, the more data, the
        better!
      </p>

      <br>
      <h3>Bios</h3>
    <p><strong>Katie Jackson</strong>(Director) is a theatre director based between Glasgow and London. 
    Having started out as a stage manager, Katie has worked professionally in theatre for 8 years and 
    started to move into directing in 2019. During the pandemic they relocated to Glasgow to study at 
    the Royal Conservatoire of Scotland and completed a Master of Fine Arts Degree in January 2022. 
    Recent credits include <em>Pains of Youth</em> (Ferdinand Bruckner trans. Martin Crimp), 
    <em>We Are Gathered here Today</em> (Katie Jackson), <em>The Test</em> (Elisabeth Del Toro), and 
    <em>Visiting Cézanne</em> (Duane Kelly, Red Rover Theatre).</p>

    <p><strong>Laurie Beckoff</strong>(Various) is a writer, editor, and producer who has performed at 
    the Universities of Chicago, Oxford, and Edinburgh. Favorite roles include Dotty in 
    <em>Noises Off</em> and Puck in <em>A Midsummer Night's Dream</em>.</p>

    <p><strong>Katy Campbell</strong>(Narrator) is a Chicago-based actor/singer. 
    Credits include Facts of Life: Satan's School for Girls (Hell in a Handbag), 
    The Ballad of Lefty and Crabbe, Notes and Letters (Underscore Theatre), 
    The Magic Treehouse (Emerald City Theatre), Make Me Bad, Xanadu (Columbia College). 
    She's represented by Shirley Hamilton Talent. <a target="blank" href="www.katycampbell.com">
      www.katycampbellactor.com</a></p>

    <p><strong>Elisabeth Del Toro</strong>(Writer/Researcher/The Actor You Saw) is a Digital Society 
    and Social Change student at the University of Glasgow. More of her artistic work can be found 
    at <a target="blank" href="https://www.elisabethdeltoro.com">elisabethdeltoro.com</a>
    . She's looking for a job- check out her github <a target="_blank" href="https://github.com/elisabethdeltoro">here</a>!</p>

    <p><strong>Libby Marshall</strong>(Various) If you enjoyed her disembodied voice, you 
    might also enjoy her book, Penny Pinching Tips for the Morally Bankrupt. Buy it 
    <a target="blank" href="https://www.amazon.com/Penny-Pinching-Tips-Morally-Bankrupt-ebook/dp/B08RLPGP2J/">HERE.</a></p>

    <p><strong>Neftali Morales</strong>(Various) is a comedian in Chicago who wakes up very early to do 
    jiu jitsu.</p>

    <p><strong>Adam Mengesha</strong>(Brett) Born and raised in Dallas, Tx, Adam moved to 
    Austin to attend the University of Texas for his Bachelor's degree in Asian Studies. 
    After graduating he redirected his plans and decided to pursue his passion in acting/improv, 
    studying and performing at the various improv theaters in Austin. Looking to continue his training, 
    Adam moved to Chicago in the Summer of 2016. Since arriving he has studied at IO, Second City's 
    Conservatory, and CIC, sharing the stage and making friends with many talented people along the way.</p>

    <p><strong>Natalie Rae</strong>(Various) is an actor in Chicago. She had a BA in musical theatre 
    from the University of Wisconsin Green Bay. She had worked with many professional theatres in 
    Chicago including First Folio, Underscore, Towle, and others. She is happy to be branching out 
    to other performance mediums. Instagram:@NatalieRae444</p>

    <p><strong>Matt Roarty</strong>(Various) My bio? That I am very excited to be able to help Elisabeth, 
    the best person in the world, with her project :)</p>

  <p><strong>Tawny Safieddine</strong>(Cleo) is a Second City Bob Curry Fellow and loves to smile.</p>

    <p><strong>Eric Wiig</strong>(Jonah) is a pacifist. He has performed at Second City Chicago, 
    The Annoyance, and Groundlings. He has performed in festivals across America and has written three solo shows. 
    He would like to thank Elisabeth for her patience and direction. Additionally, he would like to thank the public 
    library system.</p>

<br>
<h3>Sounds/Projection Videos</h3>
    <p>All sound effects and foley were pulled from the BBC Sound Effects library. If you have always wanted to listen to lots
      and lots of forest noise with random monkey hooting in the background... you gotta check out 
      the <a target="blank" href="https://sound-effects.bbcrewind.co.uk/search?q=monkey">BBC Sound Effects Library</a>.
      They also have stuff without monkeys, as you heard in this show.
          <p>Projection videos for this show were sourced through the creative commons on <a target="blank" href="pexels.com" >pexels.com.</a>
           I haven't seen everything on there but unfortunately I have found their monkey in the forest footage a little less extensive than that
           on the BBC Sound Effects Library.</p>

    </p>
<br>

<br>
        <h3>Additional Thanks</h3>
    <p>I would like to thank all the people who talked me through this script on video calls from other 
      time zones, who volunteered their voices for parts that disappeared, offered advice on participatory 
      theatre, and helped with the 800 other mini-tasks that popped up in the large task of Making A Play.
    Thank you to Annabelle, Sophie, Leilani, Celeste, Delia, Rebekah, Ilse, and Laura for all of your 
    contributions and thoughts! </p>

        <p>To the voiceover actors, thank you for your talents, your time, and your willingness to 
          download and learn how to operate audio recording software. You are all great friends for 
          doing this, I appreciate it so much. Hold it over my head forever.</p>

        <p>Huge thanks goes out to Katie, my director, for doing 8 people's worth of work and being so 
          goddamn insightful while doing it. I would recommend you for any project any day. 
          Thanks for going on this weird dark journey with me.</p>

        <p>Alyson you singlehandedly carried this website out of a trench and into an 
          air-conditioned room with internet!!  An angel and a heroine!!!! I cannot thank you enough!!!
          You get more exclamation points than anyone else!!!! </p>

        <p>And final thanks to the girl reading this :) But seriously without audience members 
          this project would have produced no data and would have been ultimately meaningless. 
          Thank you, reader/audience member/research participant, for the time you took answering 
          stressful questions and for giving me your 
          answers. If you'd like to see the final data, or just wanna talk to me about the research 
          in general, feel free to email me! 2645180D@student.gla.ac.uk (I didn't pick it, I would 
          never make you type my whole student id number, blame Adam Smith, etc) 
         
          <br>-Elisabeth
          </p>

    </div>
    <!-- This is the actual show itself  -->
    <div v-if="!disclaimer && !afterShow">
   
      <iframe
        v-if="intro === true"
        id="start-Q1"
        width="862"
        height="485"
        :src="urls[step]"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        @mouseover="timer(currentVideoLength)"
      ></iframe>

      <iframe
        v-if="intro === false"
        id="start-Q1"
        width="862"
        height="485"
        :src="urls[videoIndex][videoSubIndex]"
        title="YouTube video player"
        frameborder="0"
        allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
        allowfullscreen
        @mouseover="timer(currentVideoLength)"
      ></iframe>
          

      <!-- Initial question -->
      <div v-if="intro === true && isVideoComplete === true">
        <p><strong>Do you want the blue shirt or the white shirt?</strong></p>
        <p @click="selectShirt('Blue')" class="option">Blue</p>
        <p @click="selectShirt('White')" class="option">White</p>
      </div>


<!-- the rest of the questions-->
      <div v-if="step === 0 && intro === false && isVideoComplete === true">
        <p>
          <strong>Do you want to go to a bar or to go to a library?</strong>
        </p>
        <p @click="recordAnswer('Bar', step)" class="option">Bar</p>
        <p @click="recordAnswer('Library', step)" class="option">Library</p>
      </div>

      <div v-if="step === 1 && isVideoComplete === true">
        <p>
          <strong
            >Do you want to ask Jonah why he pushed back on Brett or tell Jonah
            not to argue with Brett?</strong
          >
        </p>
        <p @click="recordAnswer('Ask', step)" class="option">Ask why</p>
        <p @click="recordAnswer('Tell', step)" class="option">
          Tell him to stop
        </p>
      </div>

      <div v-if="step === 2 && isVideoComplete === true">
        <p>
          <strong
            >Do you tell her what just happened with your brother or
            deflect?</strong>
        </p>
        <p @click="recordAnswer('Tell', step)" class="option">Tell her.</p>
        <p @click="recordAnswer('Deflect', step)" class="option">Deflect.</p>
      </div>

      <div v-if="step === 3 && isVideoComplete === true">
        <p>
          <strong
            >Do you think it’s better to commit a dangerous act for necessary
            change, or do you think violent change could be worse?</strong>
        </p>
        <p @click="recordAnswer('Do', step)" class="option">Do something.</p>
        <p @click="recordAnswer('Avoid', step)" class="option">
          Avoid violence.
        </p>
      </div>

      <div v-if="step === 4 && isVideoComplete === true">
        <p>
          <strong>
            <p>
              <strong>Do you help them or try to talk them out of it?</strong>
            </p>
          </strong>
        </p>
        <p @click="recordAnswer('Help', step)" class="option">Help them.</p>
        <p @click="recordAnswer('Talk', step)" class="option">
          Talk them down.
        </p>
      </div>

      <div v-if="step === 5 && isVideoComplete === true">
        <p><strong>Do you cover for the radicals or turn them in?</strong></p>
        <p @click="recordAnswer('Cover', step)" class="option">
          Cover for them.
        </p>
        <p @click="recordAnswer('Turn', step)" class="option">Turn them in.</p>
      </div>

      <div v-if="step === 6 && isVideoComplete === true">
        <p>
          <strong>
            <p><strong>Do you join her or let her go alone?</strong></p>
          </strong>
        </p>
        <p @click="recordAnswer('Join', step)" class="option">Join her.</p>
        <p @click="recordAnswer('Let', step)" class="option">
          Let her go alone.
        </p>
      </div>

      <div v-if="step === 7 && isVideoComplete === true">
        <p><strong>Do you blow up the centre or walk away?</strong></p>
        <p @click="recordAnswer('Blow', step)" class="option">
          Blow up the center.
        </p>
        <p @click="recordAnswer('Walk', step)" class="option">Walk away.</p>
      </div>
      <div v-if="step === 8 && isVideoComplete === true">
        <button @click="afterShow = true">about the show</button>
      </div>
    </div>
  </div>
</template>

<script>
import { send } from "emailjs-com";

export default {
  name: "App",
  data() {
    return {
      afterShow: false,
      disclaimer: true,
      intro: true,
      mainPhase: false,
      currentVideoLength: 47000,
      isVideoComplete: false,
      step: 0,
      videoIndex: 0,
      videoSubIndex: 0,
      shirtSelection: "None",
      hasTimerStarted: false,
      urls: ["https://www.youtube-nocookie.com/embed/DDRONxsIudQ?controls=0"],
      whiteShirtUrls: [
        ["https://www.youtube-nocookie.com/embed/3TADGbs6pnc?controls=0"],
        [
          "https://www.youtube-nocookie.com/embed/fAO02kPjkaM?controls=0",
          "https://www.youtube-nocookie.com/embed/lOjodj73Ovc?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/xXjBFvgLTxM?controls=0",
          "https://www.youtube-nocookie.com/embed/jg5E4F9xlio?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/yC5oB_Z2-ZE?controls=0",
          "https://www.youtube-nocookie.com/embed/YGXZA-JQs3M?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/mvz-nh_-Uw8?controls=0",
          "https://www.youtube-nocookie.com/embed/Ks-9yLulPdk?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/5IHbjSKbqMk?controls=0",
          "https://www.youtube-nocookie.com/embed/mhhnO-GeQhI?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/Ku0HxCGXloM?controls=0",
          "https://www.youtube-nocookie.com/embed/CDUw4TK-TKM?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/hJCu-wmgXXc?controls=0",
          "https://www.youtube-nocookie.com/embed/hA42iZ92x2A?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/JZDJY7s4sxo?controls=0",
          "https://www.youtube-nocookie.com/embed/EEfCh0mB2Gw?controls=0",
        ],
      ],
      blueShirtUrls: [
        ["https://www.youtube-nocookie.com/embed/cHICerU0Cl0?controls=0"],
        [
          "https://www.youtube-nocookie.com/embed/pAqdg8xBdfA?controls=0",
          "https://www.youtube-nocookie.com/embed/PHFhB6GQDTk?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/Y3ZKd9WWu08?controls=0",
          "https://www.youtube-nocookie.com/embed/S-qE-VAeWls?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/kL54XFEy19s?controls=0",
          "https://www.youtube-nocookie.com/embed/0TQ5nTvf10Q?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/kCVZvKmcLzk?controls=0",
          "https://www.youtube-nocookie.com/embed/dyRv-YmY1Xc?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/V4Tha3jITpk?controls=0",
          "https://www.youtube-nocookie.com/embed/K1jtPzfQGxw?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/iS4EK8WjAKo?controls=0",
          "https://www.youtube-nocookie.com/embed/cwy55fJbiF0?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/ZuZSupyhS1Q?controls=0",
          "https://www.youtube-nocookie.com/embed/Rgy9DN0L8vU?controls=0",
        ],
        [
          "https://www.youtube-nocookie.com/embed/J85iWruqMRw?controls=0",
          "https://www.youtube-nocookie.com/embed/AfLNxgz567g?controls=0",
        ],
      ],
      q1Answer: null,
      q2Answer: null,
      q3Answer: null,
      q4Answer: null,
      q5Answer: null,
      q6Answer: null,
      q7Answer: null,
      q8Answer: null,
      q9Answer: null,
    };
  },
  methods: {
    nextStep() {
      this.step = this.step + 1;
      this.hasTimerStarted = false;

      this.isVideoComplete = false;
    },
    selectShirt(selection) {
      this.shirtSelection = selection;
      this.q1Answer = selection;

      if (selection === "Blue") {
        this.urls = this.blueShirtUrls;
        this.currentVideoLength = 74000;
      } else if (selection === "White") {
        this.urls = this.whiteShirtUrls;
        this.currentVideoLength = 74000;
      }

      this.intro = false;
      this.hasTimerStarted = false;
      this.isVideoComplete = false;
    },
    recordAnswer(selection, currentStep) {
      if (currentStep === 0) {
        this.q2Answer = selection;
      } else if (currentStep === 1) {
        this.q3Answer = selection;
      } else if (currentStep === 2) {
        this.q4Answer = selection;
      } else if (currentStep === 3) {
        this.q5Answer = selection;
      } else if (currentStep === 4) {
        this.q6Answer = selection;
      } else if (currentStep === 5) {
        this.q7Answer = selection;
      } else if (currentStep === 6) {
        this.q8Answer = selection;
      } else if (currentStep === 7) {
        this.q9Answer = selection;
      }
      this.determineNextVideo(selection, currentStep);
      this.nextStep();
    },
    determineNextVideo(selection, currentStep) {
      if (currentStep === 0) {
        if (selection === "Bar") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
           this.currentVideoLength = 398000;
        } else if (selection === "Library") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
           this.currentVideoLength = 394000;
        }
      }
      if (currentStep === 1) {
        if (selection === "Ask") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
           this.currentVideoLength = 164000;
        } else if (selection === "Tell") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
           this.currentVideoLength = 164000;
        }
      }
      if (currentStep === 2) {
        if (selection === "Tell") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
           this.currentVideoLength = 164000;
        } else if (selection === "Deflect") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
          this.currentVideoLength = 164000;
        }
      }
      if (currentStep === 3) {
        if (selection === "Do") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
          this.currentVideoLength = 207000;
        } else if (selection === "Avoid") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
          this.currentVideoLength = 209000;
        }
      }
      if (currentStep === 4) {
        if (selection === "Help") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
          this.currentVideoLength = 131000;
        } else if (selection === "Talk") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
          this.currentVideoLength = 136000;
        }
      }
      if (currentStep === 5) {
        if (selection === "Cover") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
          this.currentVideoLength = 188000;
        } else if (selection === "Turn") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
          this.currentVideoLength = 185000;
        }
      }

      if (currentStep === 6) {
        if (selection === "Join") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
          this.currentVideoLength = 244000;
        } else if (selection === "Let") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
          this.currentVideoLength = 256000;
        }
      }

      if (currentStep === 7) {
        if (selection === "Blow") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 0;
          this.currentVideoLength = 51000;
        } else if (selection === "Walk") {
          this.videoIndex = this.videoIndex + 1;
          this.videoSubIndex = 1;
          this.currentVideoLength = 49000;
        }
        this.sendData();
      }
    },
    sendData() {
      const data = {
        message: `Q1: ${this.q1Answer} Q2: ${this.q2Answer}  Q3: ${this.q3Answer}  Q4: ${this.q4Answer}  Q5: ${this.q5Answer}  Q6: ${this.q6Answer}  Q7: ${this.q7Answer}  Q8: ${this.q8Answer}  Q9: ${this.q9Answer} `,
      };

      send("service_h2kqfs6", "template_cus7mb3", data, "bEaxSBOR7IT2jf03B")
        .then((res) => {
          console.log(res);
        })
        .catch((error) => {
          console.log(error);
        });
    },
    timer(time) {
      if (this.hasTimerStarted === false) {
        this.hasTimerStarted = true;
        console.log("timer started");
        setTimeout(() => {
          this.isVideoComplete = true;
        }, time);
      } else {
      }
    },
    submitDisclaimer() {
      this.disclaimer = false;
      this.mainPhase = true;
      console.log(this.disclaimer);
    },
  },
};


</script>

<style>
* {
  background-color:#3c3b3b;
  margin: 10px;
}

#app {
  font-family: 'Courier New', Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #ffffff;
  margin-top: 60px;
}

a:link {
  color: #ffffff;
}

a:visited {
  color: #ffffff;
}

a:active {
  color: #ffffff
}

.video {
  border: 1px solid black;
  width: 400px;
  margin: 20px auto;
  height: 240px;
}

.question {
  width: 400px;
  margin: 20px auto;
}

.option {
  cursor: pointer;
}

#fake-button {
  border: 1px solid black;
  cursor: pointer;
  background-color: #8f8d8d;
  border-radius: 50%;
}

button {
  background-color: #8f8d8d;
  cursor: pointer;
}
</style>
