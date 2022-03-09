<template>
  <v-card>
    <v-list-item three-line>
      <div>
        <v-list-item-content v-for="(budget, i) in budgetList" :key="i">
          <v-list-item-title>{{ budget.name }}</v-list-item-title>
          <v-list-item-subtitle> {{ budget.price }} 円 </v-list-item-subtitle>
          <v-list-item-subtitle>
            {{ budget.date.from }} ~ {{ budget.date.to }}
          </v-list-item-subtitle>
        </v-list-item-content>
      </div>
    </v-list-item>
  </v-card>
</template>

<script>
export default {
  data() {
    return {
      budgetList: [
        {
          name: "食費",
          price: 25000,
          date: {
            from: "2022-01-01",
            to: "2022-01-31",
          },
        },
        {
          name: "生活消耗費",
          price: 10000,
          date: {
            from: "2022-01-01",
            to: "2022-01-31",
          },
        },
        {
          name: "お出かけ予算",
          price: 30000,
          date: {
            from: "2022-01-21",
            to: "2022-01-23",
          },
        },
      ],
    };
  },
};
</script>
