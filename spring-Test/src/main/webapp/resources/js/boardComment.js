
console.log(bnoVal);

async function postCommenttoServer(cmtData){
    try{
        const url = "/comment/post";
        const config = {
            method : "post",
            headers:{
                'content-type':'application/json; charset=utf-8'
            },
            body:JSON.stringify(cmtData)
        };

        const resp = await fetch(url, config);
        const result = await resp.text(); //isOk
        return result;
    }catch(err){
        console.log(err);
    }
}//등록?

document.getElementById('cmtPostBtn').addEventListener('click',()=>{
    const cmtText = document.getElementById('cmtText').value;
    const cmtwriter = document.getElementById('cmtWriter').innerText; //span안에 있으면 이너텍스트로...
    if(cmtText==""||cmtText == null){
        alert("댓글이 없습니다 입력해주세요");
        document.getElementById('cmtText').focus(); // 커서 깜빡이게...
        return false;
    } else{
        let cmtData ={
            bno :bnoVal,
            writer : cmtwriter,
            content : cmtText
        };
        console.log(cmtData);
        postCommenttoServer(cmtData).then(result=>{
            console.log(result);
            //isOk확인
            if(result == 1){
                alert('댓글 등록 성공~!!');
                
                //화면에 뿌리기예정               
            }
        })
    }
})