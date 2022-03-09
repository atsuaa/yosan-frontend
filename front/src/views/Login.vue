<template>
  <v-app>
    <v-container>
      <v-row>
        <v-col>
          <v-card>
            <v-card-title>
              <h1>ログイン</h1>
            </v-card-title>
            <v-card-text>
              <v-form v-on:submit.prevent="doLogin" v-model="valid">
                <v-text-field
                  v-model="user.userId"
                  prepend-icon="mdi-account-circle"
                  label="User ID"
                  required
                />
                <v-text-field
                  v-model="user.password"
                  v-bind:type="showPassword ? 'text' : 'password'"
                  @click:append="showPassword = !showPassword"
                  prepend-icon="mdi-lock"
                  v-bind:append-icon="showPassword ? 'mdi-eye' : 'mdi-eye-off'"
                  label="Password"
                  required
                />
                <v-card-actions>
                  <v-btn type="submit" class="mx-auto mt-5">Sign In</v-btn>
                </v-card-actions>
              </v-form>
            </v-card-text>
          </v-card>
        </v-col>
      </v-row>
    </v-container>
  </v-app>
</template>
<script>
export default {
  data() {
    return {
      user: {},
      valid: true,
      showPassword: false,
    };
  },
  methods: {
    doLogin() {
      this.$store.dispatch("auth", {
        userId: this.user.userId,
        userToken: "dummy token",
      });
      this.$router.push(this.$route.query.redirect);
    },
  },
};
</script>
