import React from "react";

function expensiveRandom(a: number) {
  let k = 0;
  for (let i = 0; i < 10_000_000; i++) {
    k += Math.random();
  }
  return k;
}

const App: React.FC = () => {
  const [a, setA] = React.useState(1000);
  const [b, setB] = React.useState(1000);

  const defA = React.useDeferredValue(a);

  return (
      <div>
        <input
            value={a}
            type="number"
            onChange={e => setA(parseInt(e.target.value))}
        />
        {React.useMemo(() => <span>{expensiveRandom(a)}</span>, [defA])}
        <input
            value={b}
            type="number"
            onChange={e => setB(parseInt(e.target.value))}
        />
      </div>
  );
};

export default App;
