import { neon } from "@neondatabase/serverless";

const sql = neon(process.env.DATABASE_URL ? process.env.DATABASE_URL : "");

export default async function DbTest() {
  const rows = await sql`SELECT * FROM users`;
  return (
    <div>
      <h1>Users</h1>
      <ul>
        {rows.map((row) => (
          <li key={row.id}>{row.name}</li>
        ))}
      </ul>
    </div>
  );
}
