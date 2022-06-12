<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>获取剪切板</title>
</head>
<body>
<script type="text/javascript" src="ReadClip.js"></script>
<script>
    const clipboard = navigator.clipboard;
    let text;
    function readClipText(){
        var clipPromise = navigator.clipboard.readText();
        clipPromise.then(function(clipText){
            alert(clipText);
            document.write(clipText);

        });

    }
</script>
<button type="button" onclick="readClipText()">读取内容</button>
<form method="post" action="../main/com/ClipboardServlet" enctype="multipart/form-data">
    <br/><br/>
    <input type="submit" value="传输内容"/>
</form>

</body>
</html>
