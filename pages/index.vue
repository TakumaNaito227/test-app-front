<template>
    <div>
        <!-- ボタンのクリックがあったらgetMsgメソッド実行 -->
        <button type="button" name="button" @click="getMsg">
            RailsからAPIを取得する
        </button>
        <!-- 取得したメッセージを表示(ループ) -->
        <div v-for="(msg, i) in msgs" :key="i">
            {{ msg }}
        </div>
    </div>
</template>

<script>
export default {
    data() {
        return {
            msgs: [],
        };
    },
    methods: {
        getMsg() {
            // helloControllerにアクセス
            this.$axios
                .$get("/api/v1/hello")
                .then((res) => this.msgs.push(res));
        },
    },
};
</script>
