export default ({ $axios }) => {
  // リクエストログ
  $axios.onRequest((config) => {
    console.log(config);
  });
  // レスポンスログ
  $axios.onResponse((config) => {
    console.log(config);
  });
  // エラーログï
  $axios.onError((e) => {
    console.log(e.response);
  });
};
