<template>
  <v-form>
    <v-container>
      <v-row>
        <!-- 項目名 -->
        <v-col cols="12" md="4">
          <v-text-field
            label="予算項目"
            required
            prepend-icon="mdi-format-list-bulleted"
          ></v-text-field>
        </v-col>
        <!-- 金額 -->
        <v-col cols="12" md="4">
          <v-text-field
            type="number"
            label="金額"
            required
            prepend-icon="mdi-piggy-bank-outline"
          ></v-text-field>
        </v-col>
        <!-- 期間 -->
      </v-row>
      <v-row>
        <v-col cols="12" sm="6">
          <v-text-field
            v-model="dateRangeText"
            label="日付"
            prepend-icon="mdi-calendar"
            readonly
          ></v-text-field>
        </v-col>
        <v-col cols="12" sm="6">
          <v-date-picker v-model="dates" range></v-date-picker>
        </v-col>
      </v-row>
      <v-btn>保存</v-btn>
    </v-container>
  </v-form>
</template>

<script>
export default {
  data() {
    return {
      dates: ["2019-09-10", "2019-09-20"],
    };
  },
  computed: {
    dateRangeText() {
      return this.dates.join(" ~ ");
    },
  },
};
</script>
