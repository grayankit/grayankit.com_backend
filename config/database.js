module.exports = ({ env }) => ({
  connection: {
    client: 'postgres',
    connection: {
      host: env('HOST', ''),
      port: env.int('DATABASE_PORT', 5432),
      database: env('DATABASE_NAME', 'grayankit'),
      user: env('DATABASE_USERNAME', 'postgres'),
      password: env('DATABASE_PASSWORD', 'gray'),
      ssl: env.bool('DATABASE_SSL', false),
    },
  },
});
