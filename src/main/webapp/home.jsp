<%--
  Created by IntelliJ IDEA.
  User: justinconger
  Date: 3/30/22
  Time: 7:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head><title>
    Home
</title></head>
<body style="margin:0;padding:0;font-family:-apple-system, BlinkMacSystemFont, Helvetica, Arial, 'Segoe UI', sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol'; background-color: #262626;">

<!-- #region Jssor Slider Begin -->
<!-- Generator: Jssor Slider Maker -->
<!-- Source: https://www.jssor.com -->
<script src="https://jssors8.azureedge.net/script/jssor.slider-27.5.0.min.js" type="text/javascript"></script>
<script type="text/javascript">
    jssor_1_slider_init = function() {
        var jssor_1_SlideshowTransitions = [
            {$Duration:800,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:800,x:0.3,$Rows:2,$During:{$Left:[0.3,0.7]},$ChessMode:{$Row:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:800,x:0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:800,x:-0.3,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:800,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:800,x:0.3,$Cols:2,$SlideOut:true,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:800,y:0.3,$Rows:2,$SlideOut:true,$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true},
            {$Duration:800,y:0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true},
            {$Duration:800,y:-0.3,$During:{$Top:[0.3,0.7]},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true},
            {$Duration:800,y:0.3,$Cols:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true},
            {$Duration:800,y:0.3,$Rows:2,$During:{$Top:[0.3,0.7]},$ChessMode:{$Row:12},$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true},
            {$Duration:800,y:0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true},
            {$Duration:800,y:-0.3,$SlideOut:true,$Easing:{$Top:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2,$Outside:true},
            {$Duration:1200,$Opacity:2,$Brother:{$Duration:1200,x:0.5,$Cols:2,$ChessMode:{$Column:3},$Easing:{$Left:$Jease$.$InOutCubic},$Opacity:2}},
            {$Duration:1000,x:-0.6,y:1,$Zoom:11,$Rotate:0.1,$During:{$Left:[0.6,0.4],$Top:[0.6,0.4],$Rotate:[0.6,0.4],$Zoom:[0.6,0.4]},$Easing:{$Left:$Jease$.$InSine,$Top:$Jease$.$InSine,$Rotate:$Jease$.$InSine,$Zoom:$Jease$.$InSine},$Opacity:2,$Brother:{$Duration:600,$Zoom:1,$Rotate:-0.5,$Easing:{$Rotate:$Jease$.$InCubic,$Zoom:$Jease$.$InSine},$Opacity:2}},
            {$Duration:1000,y:-1,$Cols:2,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$Brother:{$Duration:1000,y:1,$Cols:2,$ChessMode:{$Column:12},$Easing:{$Top:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2}},
            {$Duration:800,$Zoom:1.9,$Easing:{$Zoom:$Jease$.$InOutExpo},$Opacity:2,$Brother:{$Duration:600,$Zoom:11,$Easing:{$Zoom:$Jease$.$InOutExpo},$Opacity:2,$Shift:-100}},
            {$Duration:800,x:1,$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$Brother:{$Duration:800,x:-1,$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2}},
            {$Duration:800,x:1,$Delay:40,$Cols:6,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$ZIndex:-10,$Brother:{$Duration:800,x:1,$Delay:40,$Cols:6,$Formation:$JssorSlideshowFormations$.$FormationStraight,$Easing:{$Left:$Jease$.$InOutQuart,$Opacity:$Jease$.$Linear},$Opacity:2,$ZIndex:-10,$Shift:-60}},
            {$Duration:1200,x:4,y:4,$Zoom:11,$Rotate:1,$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
            {$Duration:1200,x:4,y:-4,$Zoom:11,$Rotate:1,$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.7}},
            {$Duration:1000,x:4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InQuint,$Zoom:$Jease$.$InQuart,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuint},$Opacity:2,$Round:{$Rotate:0.8}},
            {$Duration:1000,x:4,y:4,$Zoom:11,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InQuint,$Top:$Jease$.$InQuint,$Zoom:$Jease$.$InQuart,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InQuint},$Opacity:2,$Round:{$Rotate:0.8}},
            {$Duration:1200,$Zoom:1,$Rotate:1,$During:{$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Easing:{$Zoom:$Jease$.$Swing,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$Swing},$Opacity:2,$Round:{$Rotate:0.5}},
            {$Duration:1200,x:-0.6,$Zoom:1,$Rotate:1,$During:{$Left:[0.2,0.8],$Zoom:[0.2,0.8],$Rotate:[0.2,0.8]},$Opacity:2,$Round:{$Rotate:0.5}},
            {$Duration:1000,x:-0.5,y:0.5,$Zoom:1,$Rotate:1,$SlideOut:true,$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$Linear,$Rotate:$Jease$.$InCubic},$Opacity:2,$Round:{$Rotate:0.5}},
            {$Duration:1200,x:4,$Cols:2,$Zoom:11,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
            {$Duration:1200,x:0.5,$Cols:2,$Zoom:1,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:1200,x:4,$Cols:2,$Zoom:11,$SlideOut:true,$Assembly:2049,$ChessMode:{$Column:15},$Easing:{$Left:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:1200,y:1,$Rows:2,$Zoom:1,$SlideOut:true,$Assembly:2049,$ChessMode:{$Row:15},$Easing:{$Top:$Jease$.$InExpo,$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:1000,x:4,$Zoom:11,$Easing:{$Left:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
            {$Duration:1200,y:-0.6,$Zoom:1,$Easing:{$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
            {$Duration:1200,x:0.6,y:-0.6,$Zoom:1,$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Zoom:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2},
            {$Duration:1000,$Zoom:1,$SlideOut:true,$Easing:{$Zoom:$Jease$.$InExpo,$Opacity:$Jease$.$Linear},$Opacity:2},
            {$Duration:500,$Delay:12,$Cols:10,$Rows:5,$Opacity:2,$Clip:15,$Formation:$JssorSlideshowFormations$.$FormationSwirl,$Easing:{$Clip:$Jease$.$InSine}},
            {$Duration:500,$Delay:80,$Cols:10,$Rows:5,$Opacity:2,$Clip:15,$Formation:$JssorSlideshowFormations$.$FormationCross,$Easing:{$Clip:$Jease$.$InSine}},
            {$Duration:600,x:1,y:1,$Delay:12,$Cols:10,$Rows:5,$Reverse:true,$Formation:$JssorSlideshowFormations$.$FormationZigZag,$Assembly:260,$ChessMode:{$Column:3,$Row:12},$Easing:{$Left:$Jease$.$InCubic,$Top:$Jease$.$InCubic,$Opacity:$Jease$.$OutQuad},$Opacity:2}
        ];
        var jssor_1_SlideoTransitions = [
            [{b:0,d:600,y:-290,e:{y:27}}],
            [{b:0,d:1000,y:185},{b:1000,d:500,o:-1},{b:1500,d:500,o:1},{b:2000,d:1500,r:360},{b:3500,d:1000,rX:30},{b:4500,d:500,rX:-30},{b:5000,d:1000,rY:30},{b:6000,d:500,rY:-30},{b:6500,d:500,sX:1},{b:7000,d:500,sX:-1},{b:7500,d:500,sY:1},{b:8000,d:500,sY:-1},{b:8500,d:500,kX:30},{b:9000,d:500,kX:-30},{b:9500,d:500,kY:30},{b:10000,d:500,kY:-30},{b:10500,d:500,c:{x:125.00,t:-125.00}},{b:11000,d:500,c:{x:-125.00,t:125.00}}],
            [{b:0,d:600,x:535,e:{x:27}}],
            [{b:-1,d:1,o:-1},{b:0,d:600,o:1,e:{o:5}}],
            [{b:-1,d:1,c:{x:250.0,t:-250.0}},{b:0,d:800,c:{x:-250.0,t:250.0},e:{c:{x:7,t:7}}}],
            [{b:-1,d:1,o:-1},{b:0,d:600,x:-570,o:1,e:{x:6}}],
            [{b:-1,d:1,o:-1,r:-180},{b:0,d:800,o:1,r:180,e:{r:7}}],
            [{b:0,d:1000,y:80,e:{y:24}},{b:1000,d:1100,x:570,y:170,o:-1,r:30,sX:9,sY:9,e:{x:2,y:6,r:1,sX:5,sY:5}}],
            [{b:2000,d:600,rY:30}],
            [{b:0,d:500,x:-105},{b:500,d:500,x:230},{b:1000,d:500,y:-120},{b:1500,d:500,x:-70,y:120},{b:2600,d:500,y:-80},{b:3100,d:900,y:160,e:{y:24}}],
            [{b:0,d:1000,o:-0.4,rX:2,rY:1},{b:1000,d:1000,rY:1},{b:2000,d:1000,rX:-1},{b:3000,d:1000,rY:-1},{b:4000,d:1000,o:0.4,rX:-1,rY:-1}]
        ];
        var jssor_1_options = {
            $AutoPlay: 1,
            $Idle: 2000,
            $SlideshowOptions: {
                $Class: $JssorSlideshowRunner$,
                $Transitions: jssor_1_SlideshowTransitions
            },
            $CaptionSliderOptions: {
                $Class: $JssorCaptionSlideo$,
                $Transitions: jssor_1_SlideoTransitions,
                $Breaks: [
                    [{d:2000,b:1000}]
                ]
            },
            $ArrowNavigatorOptions: {
                $Class: $JssorArrowNavigator$
            },
            $BulletNavigatorOptions: {
                $Class: $JssorBulletNavigator$
            }
        };
        var jssor_1_slider = new $JssorSlider$("jssor_1", jssor_1_options);
        /*#region responsive code begin*/
        var MAX_WIDTH = 980;
        function ScaleSlider() {
            var containerElement = jssor_1_slider.$Elmt.parentNode;
            var containerWidth = containerElement.clientWidth;
            if (containerWidth) {
                var expectedWidth = Math.min(MAX_WIDTH || containerWidth, containerWidth);
                jssor_1_slider.$ScaleWidth(expectedWidth);
            }
            else {
                window.setTimeout(ScaleSlider, 30);
            }
        }
        ScaleSlider();
        $Jssor$.$AddEvent(window, "load", ScaleSlider);
        $Jssor$.$AddEvent(window, "resize", ScaleSlider);
        $Jssor$.$AddEvent(window, "orientationchange", ScaleSlider);
        /*#endregion responsive code end*/
    };
</script>
<link href="https://fonts.googleapis.com/css?family=Oswald:200,300,regular,500,600,700&subset=latin-ext,vietnamese,latin,cyrillic" rel="stylesheet" type="text/css" />
<style>
    /* jssor slider loading skin spin css */
    .jssorl-009-spin img {
        animation-name: jssorl-009-spin;
        animation-duration: 1.6s;
        animation-iteration-count: infinite;
        animation-timing-function: linear;
    }
    @keyframes jssorl-009-spin {
        from {
            transform: rotate(0deg);
        }
        to {
            transform: rotate(360deg);
        }
    }
    .jssorb052 .i {position:absolute;cursor:pointer;}
    .jssorb052 .i .b {fill:#000;fill-opacity:0.3;}
    .jssorb052 .i:hover .b {fill-opacity:.7;}
    .jssorb052 .iav .b {fill-opacity: 1;}
    .jssorb052 .i.idn {opacity:.3;}
    .jssora053 {display:block;position:absolute;cursor:pointer;}
    .jssora053 .a {fill:none;stroke:#fff;stroke-width:640;stroke-miterlimit:10;}
    .jssora053:hover {opacity:.8;}
    .jssora053.jssora053dn {opacity:.5;}
    .jssora053.jssora053ds {opacity:.3;pointer-events:none;}
</style>
<div id="jssor_1" style="position:relative;margin:0 auto;top:0px;left:0px;width:980px;height:380px;overflow:hidden;visibility:hidden;">
    <!-- Loading Screen -->
    <div data-u="loading" class="jssorl-009-spin" style="position:absolute;top:0px;left:0px;width:100%;height:100%;text-align:center;background-color:rgba(0,0,0,0.7);">
        <img style="margin-top:-19px;position:relative;top:50%;width:38px;height:38px;" src="//jssorcdn7.azureedge.net/theme/svg/loading/static-svg/spin.svg" />
    </div>

    <!-- Bullet Navigator -->
    <div data-u="navigator" class="jssorb052" style="position:absolute;bottom:12px;right:12px;" data-autocenter="1" data-scale="0.5" data-scale-bottom="0.75">
        <div data-u="prototype" class="i" style="width:16px;height:16px;">
            <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">
                <circle class="b" cx="8000" cy="8000" r="5800"></circle>
            </svg>
        </div>
    </div>
    <!-- Arrow Navigator -->
<%--    <div data-u="arrowleft" class="jssora053" style="width:55px;height:55px;top:0px;left:25px;" data-autocenter="2" data-scale="0.75" data-scale-left="0.75">--%>
<%--        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">--%>
<%--            <polyline class="a" points="11040,1920 4960,8000 11040,14080 "></polyline>--%>
<%--        </svg>--%>
<%--    </div>--%>
<%--    <div data-u="arrowright" class="jssora053" style="width:55px;height:55px;top:0px;right:25px;" data-autocenter="2" data-scale="0.75" data-scale-right="0.75">--%>
<%--        <svg viewbox="0 0 16000 16000" style="position:absolute;top:0;left:0;width:100%;height:100%;">--%>
<%--            <polyline class="a" points="4960,1920 11040,8000 4960,14080 "></polyline>--%>
<%--        </svg>--%>
<%--    </div>--%>
</div>
<script type="text/javascript">jssor_1_slider_init();</script>
<!-- #endregion Jssor Slider End -->
</body>
</html>